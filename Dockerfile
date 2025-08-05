FROM  ghcr.io/netbootxyz/mod-layers:debian-12
COPY /root /
ENTRYPOINT [ "/build.sh" ]
