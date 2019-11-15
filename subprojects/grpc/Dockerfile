FROM adoptopenjdk/openjdk11:alpine-jre
RUN mkdir /app
WORKDIR /app
COPY build/libs/grpc-*.jar /app/grpc.jar

EXPOSE 6565

ENTRYPOINT ["java", "-jar", "grpc.jar"]