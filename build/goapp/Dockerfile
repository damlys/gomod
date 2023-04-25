FROM golang:1.20-alpine3.17 AS builder

WORKDIR /workspace

COPY ./go.mod ./go.sum ./
RUN go mod download

COPY . .
ARG SKAFFOLD_GO_GCFLAGS
RUN CGO_ENABLED=0 go build -gcflags="${SKAFFOLD_GO_GCFLAGS}" -o ./bin/goapp ./cmd/goapp


FROM alpine:3.17

COPY --from=builder /workspace/bin/goapp /goapp
ENV GODEBUG=""
ENTRYPOINT ["/goapp"]
CMD []
USER 999:999
