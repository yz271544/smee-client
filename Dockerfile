FROM node:20.16.0-alpine3.20
LABEL description="Smee.io-client"

COPY . /usr/local/lib

RUN ln -s /usr/local/lib/smee-client/bin/smee.js /usr/local/bin/smee

ENTRYPOINT ["smee"]

CMD ["--help"]
