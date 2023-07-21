FROM caddy:builder-alpine AS builder

RUN xcaddy build \
		--with github.com/mholt/caddy-ratelimit

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
