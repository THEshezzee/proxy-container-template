FROM ghcr.io/theshezzee/proxy-container-ng:main

COPY start.sh /app/start.sh
COPY confs /app

RUN apt update \
	&& apt install -y ttyd tor fish

WORKDIR /app
ENTRYPOINT ["./start.sh"]
