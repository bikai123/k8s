FROM kdvolder/jdk8
ENV ENV LC_ALL zh_CN.UTF-8
RUN mkdir -p /usr/local/app/
COPY target/springboot-0.0.1-SNAPSHOT.jar /usr/local/app/springboot-0.0.1-SNAPSHOT.jar
ENTRYPOINT java -Dfile.encoding=UTF8 -Dsun.jnu.encoding=UTF8 -jar /usr/local/app/springboot-0.0.1-SNAPSHOT.jar