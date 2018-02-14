FROM alpine

ENV VERSION 1.0.3

RUN apk update && \
	apk add wget ca-certificates && \
	cd /tmp && \
	wget -q https://github.com/gemnasium/toolbelt/releases/download/${VERSION}/gemnasium_${VERSION}_linux_amd64.tar.gz && \
	tar xvzf gemnasium_${VERSION}_linux_amd64.tar.gz && \
	mv gemnasium_${VERSION}_linux_amd64/gemnasium /usr/local/bin/

CMD /bin/sh
