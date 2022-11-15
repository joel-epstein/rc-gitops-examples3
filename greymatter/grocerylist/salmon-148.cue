package grocerylist

import (
	gsl "greymatter.io/gsl/v1"

	"grocerylist.module/greymatter:globals"
)



Salmon-148: gsl.#Service & {
	// A context provides global information from globals.cue
	// to your service definitions.
	context: Salmon-148.#NewContext & globals

	name:          "salmon-148"
	display_name:  "Salmon-148"
	version:       "v1.0.0"
	description:   "EDIT ME"
	
	api_endpoint:              "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	api_spec_endpoint:         "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	business_impact:           "low"
	owner: ""
	capability: ""
	
	// Salmon-148 -> ingress to your container
	ingress: {
		"salmon-148": {
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

	// Edge config for the Salmon-148 service.
	// These configs are REQUIRED for your service to be accessible
	// outside your cluster/mesh.
	edge: {
		edge_name: "edge-grocerylist"
		edge_ingress: "edge-grocerylist"
		routes: "/services/grocerylist/salmon-148": upstreams: "\(name)": gsl.#DefaultUpstream
	}
}

exports: "salmon-148": Salmon-148
