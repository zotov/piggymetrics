FROM openjdk:8

RUN echo $(ls -1 .)
RUN echo $(ls -1 /home/runner/work)
RUN echo $(ls -1 /home/runner/work/piggymetrics/piggymetrics/)

ADD ./target/auth-service.jar /app/
#ADD ./auth-service/target/auth-service.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/auth-service.jar"]

EXPOSE 5000