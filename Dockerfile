FROM golang as build-env
RUN go get -u github.com/rakyll/hey

FROM debian:stretch-slim

WORKDIR /app
COPY --from=build-env /go/bin/hey /app
COPY loadtest.sh /app

ENTRYPOINT ["/app/loadtest.sh"]