FROM node:lts

ARG VERSION=2
RUN npm i -g serverless@$VERSION && \
	npm i -g npm-check-updates && \
	apt-get update && apt-get install -y -q --no-install-recommends cron procps make default-jre && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
USER node
WORKDIR /usr/app/

ENTRYPOINT ["serverless"]
