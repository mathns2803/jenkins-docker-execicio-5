FROM openjdk:11

WORKDIR /app

COPY src/br/unicamp/OlaUnicamp.java .

RUN javac br/unicamp/OlaUnicamp.java

CMD ["java", "br.unicamp.OlaUnicamp"]
