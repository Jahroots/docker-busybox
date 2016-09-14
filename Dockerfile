FROM busybox
ENV MAVEN_VERSION 3.3.9
RUN	mkdir /opt &&\
	wget http://www.mirrorservice.org/sites/ftp.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz &&\
	tar -xf apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt &&\
	rm apache-maven-${MAVEN_VERSION}-bin.tar.gz &&\
	mv /opt/apache-maven-${MAVEN_VERSION} /opt/apache-maven
VOLUME /opt/apache-maven