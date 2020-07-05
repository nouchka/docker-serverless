DOCKER_IMAGE=serverless

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) version

update:
	docker run --rm --entrypoint ncu $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) -g
