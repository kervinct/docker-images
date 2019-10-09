all: build push
.PHONY: build push 

TAG = 5.3.0

DOCKER_REGISTRY = index.tenxcloud.com/jimmy

build:
	docker build -t $(DOCKER_REGISTRY)/logstash:$(TAG) .

push: 
	docker push $(DOCKER_REGISTRY)/logstash:$(TAG)

clean:
	docker rmi $(DOCKER_REGISTRY)/logstash:$(TAG)
