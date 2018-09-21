#FROM frolvlad/alpine-oraclejdk8:slim
FROM maven:3.5.2-jdk-8-alpine
VOLUME /tmp
RUN apt-get install maven
RUN mvn clean package
ADD target/hellow-world-0.0.1.jar hellow-world.jar
RUN sh -c 'touch /hellow-world.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hellow-world.jar"]
#test
