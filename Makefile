.PHONY: default test build

default: test build

build:
	CGO_ENABLED=0 go build -a --trimpath --installsuffix cgo --ldflags="-s" -o http-pong

test:
	go test -v -cover ./...

