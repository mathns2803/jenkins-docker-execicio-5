FROM openjdk:11

WORKDIR /app

COPY src/br/unicamp/OlaUnicamp.java /app

RUN javac OlaUnicamp.java

CMD ["java", "OlaUnicamp"]