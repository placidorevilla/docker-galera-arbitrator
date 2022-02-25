FROM bitnami/minideb:bullseye

ENV GALERA_NODES=""
ENV GALERA_GROUP=""
ENV GALERA_OPTIONS=""

RUN   apt update && \
      apt -y install --no-install-recommends galera-arbitrator-4 && \
      rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

EXPOSE 4567

USER 1000

ENTRYPOINT ["/entrypoint.sh"]
