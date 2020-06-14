FROM openjdk:8
ADD target/spring-boot-docker.jar tmp/spring-boot-docker.jar
EXPOSE 8088
ENTRYPOINT ["java", "-jar", "tmp/spring-boot-docker.jar"]