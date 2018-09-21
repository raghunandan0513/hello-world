FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
RUN mvn clean package
ADD target/hellow-world-0.0.1.jar hellow-world.jar
RUN sh -c 'touch /hellow-world.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hellow-world.jar"]
#test
