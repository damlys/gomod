#!/usr/bin/env bash
set -e

rm -f deploy/goapp/overlays/prod/config-files/secret.dec.env
rm -f deploy/goapp/overlays/prod/config-files/secret.dec.json
rm -f deploy/goapp/overlays/prod/config-files/secret.dec.txt
rm -f deploy/goapp/overlays/prod/config-files/secret.dec.yaml
