IMAGE=localhost/resin-octoprint:latest

build:
	docker build -t ${IMAGE} .

run: build
	docker run -it --rm -p 8080:80 ${IMAGE}

shell: build
	docker run -it --rm --entrypoint /bin/bash ${IMAGE}
