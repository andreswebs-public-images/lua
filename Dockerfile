FROM alpine:3.13

ENV LUA_VERSION="5.3"

RUN \
  apk add --no-cache "lua${LUA_VERSION}" "lua${LUA_VERSION}-dev" && \
  apk add --no-cache --virtual .build-deps build-base unzip git && \
  cd /tmp && \
  git clone https://github.com/keplerproject/luarocks.git && \
  cd luarocks && \
  sh ./configure && \
  make build install && \
  cd && \
  apk del --purge .build-deps && \
  rm -rf /var/cache/apk/* /tmp/* /root/.cache/luarocks && \
  ln -s "/usr/bin/lua${LUA_VERSION}" /usr/bin/lua

ARG PUID=1000
ARG PGID=1000

RUN \
  addgroup -g "${PGID}" -S lua && \
  adduser -u "${PUID}" -G lua -h /lua -D lua

WORKDIR /lua

USER lua

ENTRYPOINT ["/usr/bin/lua"]
