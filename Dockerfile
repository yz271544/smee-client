FROM node:20.16.0-alpine3.20
LABEL description="Smee.io-client"

WORKDIR /usr/src/smee-client

COPY . /usr/src/smee-client

RUN npm install

RUN ln -s /usr/src/smee-client/bin/smee.js /usr/local/bin/smee

ENTRYPOINT ["smee"]

CMD ["--help"]
