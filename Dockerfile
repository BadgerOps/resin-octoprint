FROM resin/%%RESIN_MACHINE_NAME%%-python

RUN apt-get update \
	&& apt-get install -y \
		unzip

WORKDIR /tmp
COPY octoprint.zip octoprint.zip
RUN unzip octoprint.zip \
	&& rm -rf /usr/local/src \
	&& mv OctoPrint-master /usr/local/src
RUN ls -lah /usr/local/src

WORKDIR /usr/local/src
RUN virtualenv venv \
	&& ./venv/bin/python setup.py install

ENTRYPOINT /usr/local/src/venv/bin/octoprint --iknowwhatimdoing --host 0.0.0.0 --port 80 --basedir /data/octoprint

