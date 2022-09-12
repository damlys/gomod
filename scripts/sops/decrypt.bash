#!/usr/bin/env bash
set -e

sops --decrypt --output=deploy/goapp/overlays/prod/config-files/secret.dec.env deploy/goapp/overlays/prod/config-files/secret.enc.env
sops --decrypt --output=deploy/goapp/overlays/prod/config-files/secret.dec.json deploy/goapp/overlays/prod/config-files/secret.enc.json
sops --decrypt --output=deploy/goapp/overlays/prod/config-files/secret.dec.txt deploy/goapp/overlays/prod/config-files/secret.enc.txt
sops --decrypt --output=deploy/goapp/overlays/prod/config-files/secret.dec.yaml deploy/goapp/overlays/prod/config-files/secret.enc.yaml
