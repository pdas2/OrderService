FROM openjdk:8

ADD target/OrderService-0.0.1-SNAPSHOT.jar /OrderService.jar

RUN sh -c 'touch /OrderService.jar'

#EXPOSE 8140
EXPOSE 80

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/OrderService.jar"]