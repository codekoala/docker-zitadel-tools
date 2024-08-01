FROM golang:alpine AS builder

RUN go install github.com/zitadel/zitadel-tools@latest

FROM alpine:latest

RUN apk add --update --no-cache bash kubectl
COPY --from=builder /go/bin/zitadel-tools /usr/bin/zitadel-tools

ENTRYPOINT ["/usr/bin/zitadel-tools"]
