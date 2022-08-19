FROM golang:1.19 AS sdk
# $ cat /etc/passwd | grep "www-data"
# www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
# $ cat /etc/group | grep "www-data"
# www-data:x:33:

WORKDIR /workspace

COPY ./go.mod ./go.sum ./
RUN go mod download

COPY . .
ARG SKAFFOLD_GO_GCFLAGS
RUN CGO_ENABLED=0 go build -gcflags="${SKAFFOLD_GO_GCFLAGS}" -o ./bin/goapp ./cmd/goapp


FROM ubuntu:22.04 AS rte
# $ cat /etc/passwd | grep "www-data"
# www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
# $ cat /etc/group | grep "www-data"
# www-data:x:33:

COPY --from=sdk /workspace/bin/goapp /goapp
ENV GODEBUG=""
ENTRYPOINT ["/goapp"]
CMD []
USER 33:33
