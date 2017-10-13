CONTAINER_LABEL := python_example

default: build

clean:
	rm -rf tests/__pycache__

build: clean
	docker build -t $(CONTAINER_LABEL) .

test:
	docker run --rm -t $(CONTAINER_LABEL) sh -c 'pytest -v'

run:
	docker run --rm -t $(CONTAINER_LABEL)

interactive:
	docker run --rm -v `pwd`:`pwd` -w `pwd` -it $(CONTAINER_LABEL) /bin/bash
