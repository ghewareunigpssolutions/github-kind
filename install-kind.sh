#!/bin/bash

# Install kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# Create a Kubernetes cluster
kind create cluster --name k8s --config cluster.yaml

# Set the KUBECONFIG environment variable
export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
