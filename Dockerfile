FROM centos
RUN echo "now building..."

RUN yum install -y sudo expect

RUN curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent3.sh | sh

COPY login.sh /tmp

RUN chmod +x /tmp/login.sh

#CMD echo "now running..."

ENTRYPOINT ["/tmp/login.sh"]

