#!/bin/bash

set -ex

cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-1 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-2 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-3 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-4 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-5 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-6 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-7 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-8 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-9 | kubectl delete -f -
cue eval all_k8s.cue -e everything_yaml --out text -t number=100 -t namespace=foobar-10 | kubectl delete -f -

