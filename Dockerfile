FROM openjdk:11

WORKDIR /app

COPY src/br/unicamp/OlaUnicamp.java .

RUN javac OlaUnicamp.java

CMD ["java", "olaunicamp"]
