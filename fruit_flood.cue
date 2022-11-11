// run this command to eval this cue and verify
// cue eval -e all_fruits_yaml --out text -t name=kiwi -t num=2 fruit_flood.cue


import (
	"list"
	"encoding/yaml"
)

fruit_name: string |*"kiwi" @tag(name)
num_fruits: int | *1 @tag(num,type=int)

_fruit_template: {
	_name: string
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: {
		name: _name
		annotations: "greymatter.io/inject-sidecar-to": "9090"
	}
	spec: {
		selector: matchLabels: app: _name
		template: {
			metadata: labels: app: _name
			spec: containers: [{
				name:  _name
				image: "greymatter.jfrog.io/internal-oci/fake-service:v0.24.2"
        env: [
          {name: "ERROR_RATE", value: "0.1"},
          {name: "ERROR_CODE", value: "501"},
        ]
			}]
		}
	}
}


all_fruits: [for i in list.Range(1,num_fruits+1,1) {

   _fruit_template & {_name:"\(fruit_name)-\(i)"}

}]

all_fruits_yaml: yaml.MarshalStream(all_fruits)
