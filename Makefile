IMAGE=localhost/resin-octoprint:latest

build: prep
	docker build -t ${IMAGE} -f Dockerfile.local .
	rm Dockerfile.local

run: build
	docker run -it --rm -p 8080:80 ${IMAGE}

shell: build
	docker run -it --rm --entrypoint /bin/bash ${IMAGE}

prep:
	@cp Dockerfile.template Dockerfile.local && \
		sed -i "" 's|FROM.*$$|FROM resin/nuc-python|' Dockerfile.local
