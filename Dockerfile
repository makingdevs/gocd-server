FROM centos

RUN echo "[gocd]" >> /etc/yum.repos.d/thoughtworks-go.repo
RUN echo "name            = GoCD YUM Repository" >> /etc/yum.repos.d/thoughtworks-go.repo
RUN echo "baseurl         = http://dl.bintray.com/gocd/gocd-rpm" >> /etc/yum.repos.d/thoughtworks-go.repo
RUN echo "enabled         = 1" >> /etc/yum.repos.d/thoughtworks-go.repo
RUN echo "gpgcheck        = 0" >> /etc/yum.repos.d/thoughtworks-go.repo

RUN yum install -y java-1.7.0-openjdk
RUN yum install -y go-server

EXPOSE 8153
EXPOSE 8154

CMD ["/etc/init.d/go-server", "start"]
CMD /etc/init.d/go-server start && tail -f /var/log/go-server/go-server.log
