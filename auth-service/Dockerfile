FROM openjdk:8

ADD ./target/auth-service.jar /app/
#ADD ./auth-service/target/auth-service.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/auth-service.jar"]

EXPOSE 5000