FROM openjdk:11

WORKDIR /app

RUN mkdir -p src/br/unicamp

COPY src/br/unicamp/OlaUnicamp.java src/br/unicamp/

RUN javac src/br/unicamp/OlaUnicamp.java

CMD ["java", "-cp", "src", "br.unicamp.OlaUnicamp"]
