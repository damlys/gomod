FROM europe-central2-docker.pkg.dev/gogcp-main-8/private-docker-images/gorun/core/go1-sdk:0.8.100 AS builder

COPY ./go.mod ./go.sum ./
RUN go mod download

COPY . .
ARG SKAFFOLD_GO_GCFLAGS
RUN CGO_ENABLED=0 go build -gcflags="${SKAFFOLD_GO_GCFLAGS}" -o ./bin/goapp ./cmd/goapp


FROM europe-central2-docker.pkg.dev/gogcp-main-8/private-docker-images/gorun/core/go1-rte:0.8.100

COPY --from=builder /go/bin/goapp /goapp
ENTRYPOINT ["/goapp"]
CMD []
ENV GODEBUG=""
