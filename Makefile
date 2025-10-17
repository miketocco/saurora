.PHONY: build test run

build:
	go build -o api cmd/api/main.go
	go build -o checker cmd/checker/main.go

test:
	go test ./...

run:
	docker compose -f build/docker-compose.yml up -d