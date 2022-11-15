// Edge configuration for enterprise mesh-segmentation. This is a dedicated
// edge proxy that provides north/south network traffic to services in this
// repository in the mesh. This edge would be separate from the default
// greymatter edge that is deployed via enterprise-level configuration in
// the gitops-core git repository.
package grocerylist

import (
	gsl "greymatter.io/gsl/v1"

	"grocerylist.module/greymatter:globals"
)

Edge: gsl.#Service & {
	// A context provides global information from globals.cue
	// to your service definitions.
	context: Edge.#NewContext & globals

	name:              "edge-grocerylist"
	display_name:      "Edge Grocerylist"
	version:           "v1.7.4"
	description:       "EDIT ME: Edge ingress for grocerylist"
	api_endpoint:              "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	api_spec_endpoint:         "http://\(context.globals.edge_host)/services/grocerylist/\(name)/"
	business_impact:           "high"
	owner: ""
	capability: ""
	
	ingress: {
		// Edge -> HTTP ingress to your container
		"edge-grocerylist": {
			gsl.#HTTPListener
			
			port: 10809
			routes: "/": upstreams: "\(name)": gsl.#DefaultUpstream
			
		}
	}
}

exports: "edge-grocerylist": Edge
