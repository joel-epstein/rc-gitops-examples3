#!/bin/bash

set -ex

cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-1 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=1 -t namespace=foobar-2 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-3 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-4 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-5 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-6 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-7 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-8 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-9 | kubectl apply -f -
# cue eval all_k8s.cue -e everything_yaml --out text -t number=50 -t namespace=foobar-10 | kubectl apply -f -

