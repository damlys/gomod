# `gomod`

Skaffold template for Go web services

## Skaffold

Build

```shell
$ skaffold build --profile=dev
```

Test

```shell
$ skaffold build --profile=dev --file-output=skaffold-build-artifacts.json
$ skaffold test --profile=dev --build-artifacts=skaffold-build-artifacts.json
```

Render

```shell
$ skaffold render --digest-source=tag --profile=dev | less
$ skaffold render --digest-source=tag --profile=prod-eu1 --default-repo=europe-central2-docker.pkg.dev/gomod-0/gomod | less
```

Continuous Development

```shell
$ skaffold dev --port-forward
```

Debug

- https://skaffold.dev/docs/workflows/debug/
- https://github.com/go-delve/delve/tree/master/Documentation
- https://github.com/golang/vscode-go/blob/master/docs/debugging.md

```shell
$ skaffold debug --port-forward \
    --trigger=manual --auto-build --auto-deploy --auto-sync
```

Deploy

```shell
$ skaffold run --profile=dev
$ skaffold run --profile=prod-eu1 --default-repo=europe-central2-docker.pkg.dev/gomod-0/gomod
```

Destroy

```shell
$ skaffold delete --profile=dev
$ skaffold delete --profile=prod-eu1
```

## SOPS

View secret

```shell
$ sops --decrypt deploy/goapp/overlays/prod/config-files/secret.enc.env
```

Edit secret

```shell
$ sops deploy/goapp/overlays/prod/config-files/secret.enc.env
```
