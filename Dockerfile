FROM alpine
RUN apk add --update curl jq && rm -rf /var/cache/apk/*
RUN curl -Lo /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x /usr/bin/kubectl
ADD ./run /entrypoint
ENTRYPOINT ["/entrypoint"]
