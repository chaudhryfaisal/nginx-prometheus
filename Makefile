NAME := openresty-vts-sts-sts-stream-prometheus
GITCOMMIT := $(shell git rev-parse --short=10 HEAD 2>/dev/null)

BASE_IMAGE_URL := chaudhryfaisal/$(NAME)
IMAGE_URL := $(BASE_IMAGE_URL):$(GITCOMMIT)

image-create:
	docker build --pull -t ${IMAGE_URL} .

push: image-create
	docker push ${IMAGE_URL}
	docker tag ${IMAGE_URL} $(BASE_IMAGE_URL):latest
	docker push $(BASE_IMAGE_URL):latest