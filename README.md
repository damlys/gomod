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
$ skaffold dev --port-forward
```

Debug

- https://skaffold.dev/docs/workflows/debug/
- https://github.com/go-delve/delve/tree/master/Documentation
- https://github.com/golang/vscode-go/blob/master/docs/debugging.md

```shell
$ skaffold debug --port-forward=services,debug --trigger=manual --auto-build=true --auto-deploy=true --auto-sync=true
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
