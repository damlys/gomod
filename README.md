Build

```shell
$ skaffold build
```

Test

```shell
$ skaffold build --file-output=skaffold-build-artifacts.json
$ skaffold test --build-artifacts=skaffold-build-artifacts.json
```

Render

```shell
$ SKAFFOLD_DIGEST_SOURCE=tag skaffold render --profile=dev | less
$ SKAFFOLD_DIGEST_SOURCE=tag skaffold render --profile=prod | less
```

Continuous Development

```shell
$ skaffold dev --profile=dev --port-forward=services --trigger=manual
```

Deploy

```shell
$ skaffold run --profile=dev
$ skaffold run --profile=prod
```

Destroy

```shell
$ skaffold delete --profile=dev
$ skaffold delete --profile=prod
```

TODO

- Remote Debug Go Service (`skaffold debug`)
