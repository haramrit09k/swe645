FROM tomcat:8.0
LABEL authors="Haramrit Singh Khurana, Ajit Yadav"
ADD target/student-survey-form-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8383
EXPOSE 8080
EXPOSE 80
CMD [ "catalina.sh", "run" ]





# install docker
# write Dockerfile
# docker build -t <name of docker image> . (. means find Dockerfile in present working directory)
# docker run -it -p 8383:8080 docker-test
# make sure to add 8383 port inbound in aws ec2 security group
# http://ec2-54-196-6-82.compute-1.amazonaws.com:8383/student-survey-form/ -> this link works for me


# to kill process on port 80
# sudo lsof -i :80
# kill -9 <pid>
