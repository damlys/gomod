FROM golang:1.19 AS builder

WORKDIR /workspace

COPY ./go.mod ./go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 go build -o ./bin/goapp ./cmd/goapp


FROM ubuntu:22.04
# $ cat /etc/passwd | grep "www-data"
# www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
# $ cat /etc/group | grep "www-data"
# www-data:x:33:

COPY --from=builder /workspace/bin/goapp /goapp
ENTRYPOINT ["/goapp"]
CMD []
USER 33:33
