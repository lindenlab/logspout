FROM registry.docker/debian
ENTRYPOINT ["/bin/logspout"]
VOLUME /mnt/routes
EXPOSE 8000
ADD bin/logspout /bin/logspout
# Backwards compatibility
RUN ln -s /tmp/docker.sock /var/run/docker.sock
