FROM tomcat:9-jdk8
EXPOSE 8080
COPY ./target/*.war ./webapps
RUN cp -R webapps.dist/* webapps
CMD ["catalina.sh", "run"]