#!/usr/bin/env sh
set -e

sops --encrypt --output=deploy/releases/goapp-prod/secrets.enc.yaml deploy/releases/goapp-prod/secrets.dec.yaml
