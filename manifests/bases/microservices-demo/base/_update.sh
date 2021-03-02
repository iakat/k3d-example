#!/bin/bash
set -ex

VERSION=v0.2.2
curl -L "https://raw.githubusercontent.com/GoogleCloudPlatform/microservices-demo/release/$VERSION/release/kubernetes-manifests.yaml" > microservices-demo.yml
