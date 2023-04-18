FROM tomcat:9-jdk8
EXPOSE 8080
RUN cp -R webapps.dist/* webapps
CMD ["catalina.sh", "run"]