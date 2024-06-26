IMAGE_NAME=k_anonymization
CONTAINER_NAME=k_anonymization_container
PORT=8888

.PHONY: build run clean

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --name $(CONTAINER_NAME) -p $(PORT):$(PORT) -v $(PWD):/app -d $(IMAGE_NAME)

clean:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)
	docker rmi $(IMAGE_NAME)

all: build run

stop:
	docker stop $(CONTAINER_NAME)

restart: stop run
