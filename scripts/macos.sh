#!/usr/bin/env sh
set -e

# Install manually:
# - Docker Desktop (https://www.docker.com/products/docker-desktop/)

brew install \
  awscli \
  azure-cli \
  container-structure-test \
  git \
  go \
  golangci-lint \
  goreleaser \
  helm \
  k9s \
  ko \
  kubectl \
  kustomize \
  skaffold \
  sops \
  terraform

brew install --cask \
  google-cloud-sdk

go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/gopls@latest

echo "\n\n\n--- --- --- --- --- --- --- --- --- ---\n\n\n"
set -x

go version
dlv version
golangci-lint version
gopls version
goreleaser --version

skaffold version
container-structure-test version
docker version
helm version
k9s version
ko version
kubectl version
kustomize version

terraform version
aws --version
az version
gcloud version

git version
sops --version
