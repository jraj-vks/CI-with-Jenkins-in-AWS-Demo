FROM centos
  
MAINTAINER Jayaraj_Kandaswamy

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O http://mirror.linux-ia64.org/apache/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.tar.gz
RUN tar -xvf apache*.tar.gz
RUN mv apache-tomcat-8.5.61/* /opt/tomcat/.
RUN yum -y install java
RUN java -version


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
