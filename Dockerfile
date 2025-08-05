FROM alpine AS builder

ARG MIGRATE_VERSION=v4.18.3

RUN apk --update add --no-cache curl ca-certificates \
  && curl -L https://github.com/golang-migrate/migrate/releases/download/${MIGRATE_VERSION}/migrate.linux-amd64.tar.gz \
  | tar -xz \
  && mv migrate /migrate

FROM alpine

WORKDIR /app

RUN apk --update add postgresql-client

COPY *.sql ./

COPY --from=builder /migrate /usr/bin/migrate
