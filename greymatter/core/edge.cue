// Edge configuration for enterprise mesh-segmentation. This is a dedicated
// edge proxy that provides north/south network traffic to services in this
// repository in the mesh. This edge would be separate from the default
// greymatter edge that is deployed via enterprise-level configuration in
// the gitops-core git repository.

package grocerylist

let EgressToRedisName = "\(defaults.edge.key)_egress_to_redis"

// Uncomment the below line for use with a remote JWKS provider (in this case, Keycloak)
// let EdgeToKeycloakName = defaults.edge.oidc.jwt_authn_provider.keycloak.remote_jwks.http_uri.cluster

Edge: {
	name:   defaults.edge.key
	config: [
        #domain & {
            domain_key:   defaults.edge.key
            port:         defaults.ports.edge_ingress
            _force_https: defaults.edge.enable_tls
        },
        #listener & {
            listener_key:                defaults.edge.key
            port:                        defaults.ports.edge_ingress
            _gm_observables_topic:       defaults.edge.key
            _is_ingress:                 true
            _enable_oidc_authentication: false
            _enable_rbac:                false
            _oidc_endpoint:              defaults.edge.oidc.endpoint
            _oidc_service_url:           "https://\(defaults.edge.oidc.domain):\(defaults.ports.edge_ingress)"
            _oidc_provider:              "\(defaults.edge.oidc.endpoint)/auth/realms/\(defaults.edge.oidc.realm)"
            _oidc_client_id:             defaults.edge.oidc.client_id
            _oidc_client_secret:         defaults.edge.oidc.client_secret
            _oidc_cookie_domain:         defaults.edge.oidc.domain
            _oidc_realm:                 defaults.edge.oidc.realm
        },
        // This cluster must exist (though it never receives traffic)
        // so that Catalog will be able to look-up edge instances.
        // This is a greymatter.io specific system feature that 
        // performs service cataloging of your mesh.
        #cluster & {cluster_key: defaults.edge.key},

		// Egress redis connections specifically defined for enabling the 
		// greymatter health checking system. Please do not remove these 
		// otherwise services may not properly report their health to the mesh.
        #domain & {domain_key: EgressToRedisName, port: defaults.ports.redis_ingress},
        #cluster & {
            cluster_key:  EgressToRedisName
            name:         defaults.redis_cluster_name
            _spire_self:  defaults.edge.key
            _spire_other: defaults.redis_cluster_name
        },
        #route & {route_key: EgressToRedisName},
        #listener & {
            listener_key:  EgressToRedisName
            ip:            "127.0.0.1" // egress listeners are local-only
            port:          defaults.ports.redis_ingress
            _tcp_upstream: defaults.redis_cluster_name
        },

        // greymatter catalog service definition for the edge node of: grocerylist.
		#catalog_entry & {
			name:                      "Grocerylist Edge"
			mesh_id:                   mesh.metadata.name
			service_id:                defaults.edge.key
			version:                   "v1.7.1"
			description:               "EDIT ME: Edge ingress for grocerylist"
			business_impact:           "low"
			enable_instance_metrics:   true
			enable_historical_metrics: false
		},

        #proxy & {
            proxy_key: defaults.edge.key
            domain_keys: [defaults.edge.key, EgressToRedisName]
            listener_keys: [defaults.edge.key, EgressToRedisName]
        }

        // egress->Keycloak for OIDC/JWT Authentication (only necessary with remote JWKS provider)
        // NB: You need to add the EdgeToKeycloakName key to the domain_keys and listener_keys 
        // in the #proxy above for the cluster to be discoverable by the sidecar
        // #cluster & {
        //  cluster_key:    EdgeToKeycloakName
        //  _upstream_host: defaults.edge.oidc.endpoint_host
        //  _upstream_port: defaults.edge.oidc.endpoint_port
        //  ssl_config: {
        //   protocols: ["TLSv1.2"]
        //   sni: defaults.edge.oidc.endpoint_host
        //  }
        //  require_tls: true
        // },
        // #route & {route_key:   EdgeToKeycloakName},
        // #domain & {domain_key: EdgeToKeycloakName, port: defaults.edge.oidc.endpoint_port},
        // #listener & {
        //  listener_key: EdgeToKeycloakName
        //  port:         defaults.edge.oidc.endpoint_port
        // },
    ]
}
