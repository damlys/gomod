#!/usr/bin/env sh
set -e

sops --decrypt --output=deploy/goapp/overlays/prod/secret.env deploy/goapp/overlays/prod/secret.enc.env
sops --decrypt --output=deploy/goapp/overlays/prod/secret.json deploy/goapp/overlays/prod/secret.enc.json
sops --decrypt --output=deploy/goapp/overlays/prod/secret.txt deploy/goapp/overlays/prod/secret.enc.txt
