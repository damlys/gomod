# Skaffold

Build

```
$ skaffold build --profile="dev"
```

Test

```
$ skaffold build --profile="dev" --file-output="./skaffold-build-artifacts.json"
$ skaffold test --profile="dev" --build-artifacts="./skaffold-build-artifacts.json"
```

Render

```
$ skaffold render --profile="dev" --output="./skaffold-manifests-render.yaml" --digest-source="tag"
$ skaffold render --profile="test" --output="./skaffold-manifests-render.yaml" --digest-source="tag"
```

Continuous Development

```
$ skaffold dev --profile="dev" --port-forward
```

Debug

- https://skaffold.dev/docs/workflows/debug/
- https://github.com/go-delve/delve/tree/master/Documentation
- https://github.com/golang/vscode-go/blob/master/docs/debugging.md

```
$ skaffold debug --profile="dev" --port-forward --trigger="manual" --auto-build --auto-deploy --auto-sync
```

Deploy

```
$ skaffold run --profile="dev"
$ skaffold run --profile="test"
```

Destroy

```
$ skaffold delete --profile="dev"
$ skaffold delete --profile="test"
```
