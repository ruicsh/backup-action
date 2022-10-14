FROM alpine:3.10

# hadolint ignore=DL3018
RUN apk update && apk upgrade \
  && apk add --no-cache git openssh git-lfs

RUN git lfs install

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
