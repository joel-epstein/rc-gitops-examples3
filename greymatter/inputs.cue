package grocerylist

config: {
	spire: bool | *false @tag(spire,type=bool) // enable Spire-based mTLS
	operator_namespace: string | *"gm-operator" @tag(operator_namespace, type=string)
}

mesh: {
	metadata: {
		name: string | *"greymatter-mesh"
	}
}

defaults: {
	redis_cluster_name: "greymatter-datastore"

	ports: {
		default_ingress: 10808
		edge_ingress:    10814
		redis_ingress:   10910
		metrics:         8081
	}

	// greymatter.io edge_grocerylist input configurations.
	// These configs will manipulate the behavior of accessing your services
	// from the outside world.
	edge: {
		key:        "edge_grocerylist6"
		
		enable_tls: false

		// Host for the edge loadbalancer from kubernetes. We require
		// a user entered IP here so mesh segmenation works as follows:
		// - services are not access through the core greymatter edge node
		// - security can be determined on an edge-to-edge basis
		// - tenants may manage their own loadbalancers/certificates per edge
		// - different environments/infra may require different config.
		// This can be retrieved on kubernetes by running:
		// kubectl get svc edge-grocerylist -n $MY_NAMESPACE
		endpoint: "ac8b24f85ef4645e4bd36e796e2a57a8-478306398.us-east-1.elb.amazonaws.com:10814"
		
		// OIDC block
		oidc: {
			endpoint_host: ""
			endpoint_port: 0
			endpoint:      "https://\(endpoint_host):\(endpoint_port)"
			domain:        ""
			client_id:     "\(defaults.edge.key)"
			client_secret: ""
			realm:         ""
			jwt_authn_provider: {
				keycloak: {
					issuer: "\(endpoint)/auth/realms/\(realm)"
					audiences: ["\(defaults.edge.key)"]
					local_jwks: {
						inline_string: #"""
					  {}
					  """#
					}
					// If you want to use a remote JWKS provider, comment out local_jwks above, and 
					// uncomment the below remote_jwks configuration. There are coinciding configurations
					// in ./gm/outputs/edge.cue that you will also need to uncomment.
					// remote_jwks: {
					//  http_uri: {
					//   uri:     "\(endpoint)/auth/realms/\(realm)/protocol/openid-connect/certs"
					//   cluster: "edge_plus_to_keycloak" // this key should be unique across the mesh
					//  }
					// }
				}
			}
		}
	}
		spire: {
		// Namespace of the Spire server
		namespace: "spire"
		// Trust domain must match what's configured at the server
		trust_domain: "greymatter.io"
		// The mount path of the spire socket for communication with the agent
		socket_mount_path: "/run/spire/socket"
		// When config.deploy_spire=true, we inject a secret. This sets the name of that secret
		ca_secret_name: "server-ca"
		// should we request a host mount for the socket, or normal volume mount? If true, also requests hostPID permission
		host_mount_socket: true
	}

}
