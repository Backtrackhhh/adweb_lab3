FROM java:8
VOLUME /tmp
ADD demo-0.0.1-SNAPSHOT.jar adweb_lab3.jar
RUN bash -c 'touch /adweb_lab3.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/adweb_lab3.jar"]