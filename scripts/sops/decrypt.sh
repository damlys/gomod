#!/usr/bin/env sh
set -e

sops --decrypt --output=deploy/goapp/overlays/prod/secret.dec.env deploy/goapp/overlays/prod/secret.enc.env
sops --decrypt --output=deploy/goapp/overlays/prod/secret.dec.json deploy/goapp/overlays/prod/secret.enc.json
sops --decrypt --output=deploy/goapp/overlays/prod/secret.dec.txt deploy/goapp/overlays/prod/secret.enc.txt
