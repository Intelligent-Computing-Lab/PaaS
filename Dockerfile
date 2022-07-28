FROM golang:1.13.0-alpine3.10 as build-env

ENV GO111MODULE=on
ENV BUILDPATH=PaaS
ENV GOPROXY=https://goproxy.io
ENV GOPATH=/go
RUN mkdir -p /go/src/${BUILDPATH}
COPY ./ /go/src/${BUILDPATH}
WORKDIR /go/src/${BUILDPATH}
RUN go mod tidy
EXPOSE 8080
CMD ["/usr/local/go/bin/go", "run", "./main.go", "start", "-p", ":8080", "-c", "./app.cfg", "-k", "config.yaml"]
