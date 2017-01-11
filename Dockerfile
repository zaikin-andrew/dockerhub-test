FROM node:7.4.0

RUN git clone https://305ea50dd7e620aa0d1dce7bc9d7d77c46363ae5@github.com:zaikin-andrew/dockerhub-test.git \
    && cd ./dockerhub-test \
    && npm install --global rimraf webpack webpack-dev-server typescript@beta \
    && npm install \
    && npm run prebuild:prod && npm run build:prod

EXPOSE 8080

WORKDIR /dockerhub-test/
ENTRYPOINT ["npm", "run", "server:prod"]
