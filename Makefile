REPO ?= codekoala/zitadel-tools
TAG ?= latest
IMG ?= $(REPO):$(TAG)

all: image push

image:
	docker build -t $(IMG) .

push:
	docker push $(IMG)
