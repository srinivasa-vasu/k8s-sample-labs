FROM quay.io/eduk8s/jdk11-environment:master

ARG YB_VERSION=2.7.1.1
ARG ROLE=1001

USER root

# RUN yum install netcat --no-install-recommends

RUN curl -sSLo ./yugabyte.tar.gz https://downloads.yugabyte.com/yugabyte-${YB_VERSION}-linux.tar.gz \
    && mkdir yugabyte \
    && tar -xvf yugabyte.tar.gz -C yugabyte --strip-components=1 \
    && mv ./yugabyte /usr/local/ \
    && ln -s /usr/local/yugabyte/bin/yugabyted /usr/local/bin/yugabyted \
    && ln -s /usr/local/yugabyte/bin/ysqlsh /usr/local/bin/ysqlsh \
    && chmod +x /usr/local/bin/yugabyted \
    && chmod +x /usr/local/bin/ysqlsh \
    && rm ./yugabyte.tar.gz

RUN mkdir -p /opt/yugabyte/ybdb \
    && chown -R $ROLE:0 /opt/yugabyte/ybdb \
    && chown -R $ROLE:0 /usr/local/yugabyte

USER $ROLE

ENV STORE=/opt/yugabyte/ybdb
ENV LISTEN=127.0.0.1
ENV YSQL_PORT=5433
ENV YCQL_PORT=9042

COPY --chown=$ROLE:0 . /home/eduk8s/

RUN mv /home/eduk8s/workshop /opt/workshop

RUN fix-permissions /home/eduk8s

