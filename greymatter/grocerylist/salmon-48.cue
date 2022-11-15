package grocerylist

import (
	gsl "greymatter.io/gsl/v1"

	"grocerylist.module/greymatter:globals"
)



Salmon-48: gsl.#Service & {
	// A context provides global information from globals.cue
	// to your service definitions.
	context: Salmon-48.#NewContext & globals

	name:          "salmon-48"
	display_name:  "Salmon-48"
	version:       "v1.0.0"
	description:   "EDIT ME"
	
	api_endpoint:              "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	api_spec_endpoint:         "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	business_impact:           "low"
	owner: ""
	capability: ""
	
	// Salmon-48 -> ingress to your container
	ingress: {
		"salmon-48": {
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

	// Edge config for the Salmon-48 service.
	// These configs are REQUIRED for your service to be accessible
	// outside your cluster/mesh.
	edge: {
		edge_name: "edge-grocerylist"
		edge_ingress: "edge-grocerylist"
		routes: "/services/grocerylist/salmon-48": upstreams: "\(name)": gsl.#DefaultUpstream
	}
}

exports: "salmon-48": Salmon-48
