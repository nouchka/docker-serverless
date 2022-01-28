DOCKER_IMAGE=serverless
VERSIONS=2 3

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) -v| head -n1| awk '{ print $$3}'
	docker run --rm --entrypoint node $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) -v

update:
	docker run --rm --entrypoint ncu $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):latest -g
