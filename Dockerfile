FROM alpine:latest
MAINTAINER Shaun Murakami (stmuraka@gmail.com)
RUN apk update \
 && apk add \
        curl \
        openssl
ENTRYPOINT ["curl", "--fail", "--silent", "--show-error", "--location", "--output", "/dev/null", "--write-out", "Response code: %{http_code}\n"]
#CMD ["echo", "Please specify a URL to check"]

