FROM maven:3-alpine

WORKDIR /usr/atm

COPY pom.xml .

RUN mvn dependency:resolve

COPY src ./src

RUN mvn compile

EXPOSE 8090

CMD ["mvn", "spring-boot:run"]