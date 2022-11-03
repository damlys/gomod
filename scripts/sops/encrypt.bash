#!/usr/bin/env bash
set -e

sops --encrypt --output=deploy/goapp/overlays/prod/config-files/secret.enc.env deploy/goapp/overlays/prod/config-files/secret.dec.env
sops --encrypt --output=deploy/goapp/overlays/prod/config-files/secret.enc.json deploy/goapp/overlays/prod/config-files/secret.dec.json
sops --encrypt --output=deploy/goapp/overlays/prod/config-files/secret.enc.txt deploy/goapp/overlays/prod/config-files/secret.dec.txt
sops --encrypt --output=deploy/goapp/overlays/prod/config-files/secret.enc.yaml deploy/goapp/overlays/prod/config-files/secret.dec.yaml
