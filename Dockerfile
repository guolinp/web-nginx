FROM nginx

RUN apt-get clean && apt-get upgrade -y && apt-get update -y --fix-missing
RUN apt-get install -y --no-install-suggests --no-install-recommends openssh-client net-tools curl iputils-ping procps
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

COPY bootstrap.sh /docker-entrypoint.d
