package grocerylist

import (
	gsl "greymatter.io/gsl/v1"

	"grocerylist.module/greymatter:globals"
)



Salmon-56: gsl.#Service & {
	// A context provides global information from globals.cue
	// to your service definitions.
	context: Salmon-56.#NewContext & globals

	name:          "salmon-56"
	display_name:  "Salmon-56"
	version:       "v1.0.0"
	description:   "EDIT ME"
	
	api_endpoint:              "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	api_spec_endpoint:         "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	business_impact:           "low"
	owner: ""
	capability: ""
	
	// Salmon-56 -> ingress to your container
	ingress: {
		"salmon-56": {
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

	// Edge config for the Salmon-56 service.
	// These configs are REQUIRED for your service to be accessible
	// outside your cluster/mesh.
	edge: {
		edge_name: "edge-grocerylist"
		edge_ingress: "edge-grocerylist"
		routes: "/services/grocerylist/salmon-56": upstreams: "\(name)": gsl.#DefaultUpstream
	}
}

exports: "salmon-56": Salmon-56
