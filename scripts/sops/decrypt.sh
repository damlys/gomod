#!/usr/bin/env sh
set -e

sops --decrypt --output=deploy/releases/goapp-prod/secrets.yaml deploy/releases/goapp-prod/secrets.enc.yaml
