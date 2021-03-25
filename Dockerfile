FROM node:12

RUN npm i -g serverless && \
	npm i -g npm-check-updates && \
	apt-get update && apt-get install -y -q --no-install-recommends cron procps make default-jre && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
USER node
WORKDIR /usr/app/

ENTRYPOINT ["serverless"]
