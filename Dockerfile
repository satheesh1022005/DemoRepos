FROM ssriram12/maven-3.9.9:jdk13

COPY . /usr/src/app
WORKDIR /usr/src/app

# Create necessary directories and set permissions
USER root
RUN mkdir -p /usr/src/app/target/classes && \
    chown -R root:root /usr/src/app

RUN mvn clean install

CMD ["java", "-jar", "target/maven-pipeline-demo-1.0-SNAPSHOT.jar"]

