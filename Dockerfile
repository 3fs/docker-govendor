FROM golang:1.7.1-alpine

# install git
RUN apk add --no-cache git bzr

# fetch govendor
RUN go get github.com/kardianos/govendor

ENTRYPOINT ["/go/bin/govendor"]
