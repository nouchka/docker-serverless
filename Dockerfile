FROM node:lts-slim

RUN npm i -g serverless  && \
	apt-get update && apt-get install -y -q --no-install-recommends cron procps && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
USER node
WORKDIR /usr/app/

ENTRYPOINT ["serverless"]
