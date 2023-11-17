FROM  ghcr.io/netbootxyz/mod-layers:debian-10
COPY /root /

RUN \
 mkdir -p \
	/modlayer/lib/live/boot \
	/modlayer/bin/boot && \
 cp -ax \
	/modlayer/usr/lib/live/boot/9990-mount-http.sh \
	/modlayer/lib/live/boot/ && \
 cp -ax \
        /modlayer/usr/lib/live/boot/9990-mount-http.sh \
        /modlayer/bin/boot/ && \
 cp -ax \
	/modlayer/usr/bin/curl \
	/modlayer/bin/ && \
 rm -Rf \
	/modlayer/usr


ENTRYPOINT [ "/build.sh" ]
