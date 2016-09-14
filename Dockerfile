FROM busybox

RUN wget http://downloads.sourceforge.net/project/p7zip/p7zip/16.02/p7zip_16.02_x86_linux_bin.tar.bz2 &&\
	mkdir /opt &&\
	tar xvf p7zip_16.02_x86_linux_bin.tar.bz2 -C /opt &&\
	rm p7zip_16.02_x86_linux_bin.tar.bz2 &&\
	mv /opt/p7zip_16.02 /opt/p7zip
	
VOLUME /opt/p7zip