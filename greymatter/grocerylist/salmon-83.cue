package grocerylist

import (
	gsl "greymatter.io/gsl/v1"

	"grocerylist.module/greymatter:globals"
)



Salmon-83: gsl.#Service & {
	// A context provides global information from globals.cue
	// to your service definitions.
	context: Salmon-83.#NewContext & globals

	name:          "salmon-83"
	display_name:  "Salmon-83"
	version:       "v1.0.0"
	description:   "EDIT ME"
	
	api_endpoint:              "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	api_spec_endpoint:         "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	business_impact:           "low"
	owner: ""
	capability: ""
	
	// Salmon-83 -> ingress to your container
	ingress: {
		"salmon-83": {
			gsl.#HTTPListener
			
			
			
			routes: {
				"/": {
					upstreams: {
						"local": {
							
							instances: [
								{
									host: "127.0.0.1"
									port: 9090
								},
							]
						}
					}
				}
			}
		}
	}

	// Edge config for the Salmon-83 service.
	// These configs are REQUIRED for your service to be accessible
	// outside your cluster/mesh.
	edge: {
		edge_name: "edge-grocerylist"
		edge_ingress: "edge-grocerylist"
		routes: "/services/grocerylist/salmon-83": upstreams: "\(name)": gsl.#DefaultUpstream
	}
}

exports: "salmon-83": Salmon-83
