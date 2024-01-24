FROM azul/zulu-openjdk-alpine:11.0.7-jre
COPY ./mis-web/target/*.jar app.jar
RUN addgroup -S springboot && adduser -G springboot -S springboot
USER springboot
ENTRYPOINT ["java","-jar","/app.jar" ]
