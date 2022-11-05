init:
	go mod init golib

run:
	go run main.go

get:
	go get

format:
	find . -name "*.go" -exec gofmt -w {} +

vendor:
	echo "Downloading all imported packages locally"
	go mod vendor
