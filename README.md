# rate limit example using Caddy and [caddy-ratelimit module](https://github.com/mholt/caddy-ratelimit/tree/master)https://github.com/mholt/caddy-ratelimit/tree/master

> https://caddyserver.com/docs/modules/http.handlers.rate_limit

example:

```
╰─ curl -i localhost:80/                                                                                                             ─╯
HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
Server: Caddy
Date: Fri, 21 Jul 2023 14:57:06 GMT
Content-Length: 7

API 200%                                                                                                                                   
╰─ curl -i localhost:80/                                                                                                             ─╯
HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
Server: Caddy
Date: Fri, 21 Jul 2023 14:57:07 GMT
Content-Length: 7

API 200%                                                                                                                                   
╰─ curl -i localhost:80/apisomething                                                                                                             ─╯
HTTP/1.1 429 Too Many Requests
Retry-After: 4
Server: Caddy
Date: Fri, 21 Jul 2023 14:57:07 GMT
Content-Length: 0
```