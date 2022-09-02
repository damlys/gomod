#!/usr/bin/env sh
set -e

sops --encrypt --output=deploy/goapp/overlays/prod/secret.enc.env deploy/goapp/overlays/prod/secret.dec.env
sops --encrypt --output=deploy/goapp/overlays/prod/secret.enc.json deploy/goapp/overlays/prod/secret.dec.json
sops --encrypt --output=deploy/goapp/overlays/prod/secret.enc.txt deploy/goapp/overlays/prod/secret.dec.txt
