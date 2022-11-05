init:
	go mod init github.com/galex-do/golib/v2

format:
	find . -name "*.go" -exec gofmt -w {} +

vendor:
	echo "Downloading all imported packages locally"
	go mod vendor

publish:
	git tag ${TAG}
	git push origin main --tags
