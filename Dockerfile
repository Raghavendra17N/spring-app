FROM openjdk:17-jdk-alpine

ARG		MYSQL_USER=petclinic
ARG		MYSQL_PASSWORD=petclinic
ARG     MYSQL_ROOT_PASSWORD=petclinic

ENV		MYSQL_URL=jdbc:mysql://database/petclinic \
		DATABASE=h2 \
		JAVA_OPTS=""


COPY ./target /usr/src/myapp

WORKDIR /usr/src/myapp

CMD java $JAVA_OPTS -Dspring.profiles.active=${DATABASE} -jar /usr/src/myapp/spring-petclinic-2.5.0-SNAPSHOT.jar

EXPOSE 8080