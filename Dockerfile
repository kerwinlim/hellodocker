FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk-headless && \
    apt-get clean

# just to make sure java can now run in the container \
RUN java -version

COPY target/hellodocker-1.0-SNAPSHOT.jar /app/app.jar

CMD ["java","-cp","/app/app.jar","MainApp"]