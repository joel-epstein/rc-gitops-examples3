package v1

import (
	"list"
	"strings"
	api "greymatter.io/gsl/v1/api"
)

#Exports: [ServiceName=_]: #Service
#GlobalContext: {
	edge_host: string

	mesh: {
		name:                    string
		datastore_upstream_name: string
		operator_namespace:      string
	}

	sidecar: {
		default_ingress_port: int
		healthcheck_port:     int
		metrics_port:         int
	}

	spire: {
		trust_domain: string
	}
	custom: {...}
}

#UpstreamSSLConfig: api.#ClusterSSLConfig
#ListenerSSLConfig: api.#ListenerSSLConfig

#NetworkProtocol: "tcp" | "http_auto"

// TODO (JB): Lets have more insurance that force_https is on if ssl_config is on (this had issues)
#ListenerTLSSchema: {
	force_https?: bool
	ssl_config?:  api.#ListenerSSLConfig
}

#ListenerSecretSchema: {
	force_https?: bool
	secret?:      api.#Secret
}
#ListenerSchema: {
	#ListenerTLSSchema
	#ListenerSecretSchema
	zone_key:               #DEFAULT_ZONE
	ip:                     string
	port:                   int32
	protocol:               #NetworkProtocol
	stream_idle_timeout?:   string
	request_timeout?:       string
	drain_timeout?:         string
	delayed_close_timeout?: string
	use_remote_address?:    bool
	tracing_config?:        api.#TracingConfig
	access_loggers?:        api.#AccessLoggers

	http_protocol_options?:  api.#HTTPProtocolOptions
	http2_protocol_options?: api.#HTTP2ProtocolOptions
	domain_name:             *"*" | _
	name:                    domain_name
	cors_config?:            api.#CorsConfig
	aliases?: [...string]
	redirects?: [...api.#Redirect]
	custom_headers?: [...api.#Metadatum]
	gzip_enabled?: bool
}

#UpstreamSecretSchema: {
	require_tls?: true
	secret?:      api.#Secret
}
#UpstreamTLSSchema: {
	require_tls?: bool
	ssl_config?:  api.#ClusterSSLConfig
}

#UpstreamsSchema: [Upstream=string]: #UpstreamSchema & {name: Upstream}
#UpstreamSchema: {
	#UpstreamTLSSchema
	#UpstreamSecretSchema
	zone_key: #DEFAULT_ZONE
	name:     string
	instances?: [...api.#Instance]
	lb_policy?:               string
	ring_hash_lb_config?:     api.#RingHashLbConfig
	original_dst_lb_config?:  api.#OriginalDstLbConfig
	least_request_lb_config?: api.#LeastRequestLbConfig
	common_lb_config?:        api.#CommonLbConfig
	dns_type?:                string
	health_checks?: [...api.#HealthCheck]
	outlier_detection?:      api.#OutlierDetection
	circuit_breakers?:       api.#CircuitBreakersThresholds
	http_protocol_options?:  api.#HTTPProtocolOptions
	http2_protocol_options?: api.#HTTP2ProtocolOptions
	protocol_selection?:     string

	traffic_options: {
		behavior: "shadow" | *"split"
		weight:   *1 | int
	}
}

#Routes: [routePath=string]: {
	_routePathNoSlash: strings.TrimSuffix(routePath, "/")
	_routePathSlash:   _routePathNoSlash + "/"

	zone_key:       #DEFAULT_ZONE
	prefix_rewrite: *"/" | string
	high_priority?: bool
	timeout?:       string
	idle_timeout?:  string
	route_match:    api.#RouteMatch
	response_data?: api.#ResponseData
	retry_policy?:  api.#RetryPolicy
	filter_metadata?: [string]: api.#Metadata
	filter_configs?: [string]: {...}
	request_headers_to_add?: [...api.#Metadatum]
	response_headers_to_add?: [...api.#Metadatum]
	request_headers_to_remove?: [...string]
	response_headers_to_remove?: [...string]
	redirects: [...api.#Redirect & {redirect_type: *"permanent" | "temporary"}]

	route_match: match_type: *"prefix" | "exact" | "regex"
	route_match: path:       _routePathSlash

	_default_redirect: [
		{
			from:          "^" + _routePathNoSlash + "$"
			to:            _routePathSlash
			redirect_type: "permanent"
		},
	]

	route_redirects: [...api.#Redirects]
	redirects: list.Concat([route_redirects, _default_redirect])
	upstreams: #UpstreamsSchema
}
#RouteRedirect: {}
