all: build

help:
	@echo ""
	@echo "-- Help Menu"
	@echo "  1. make run         - start docker image"
	@echo "  2. make build       - build the buildroot-pi image"
	@echo "  3. make release     - release the buildroot-pi image"

run:
	@docker run -v ${HOME}:/mnt/home --rm --name buildroot-pi-image -it erwinchang/buildroot-pi /bin/bash

build:
	@docker build --tag=erwinchang/buildroot-pi .

release: build
	@docker build --tag=erwinchang/buildroot-pi:$(shell cat VERSION) .

