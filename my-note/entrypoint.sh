#! /bin/sh
cd /app
#java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=0.0.0.0:5005 -jar my-note-0.0.1-SNAPSHOT.jar --server.port=8082
java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=0.0.0.0:5005 -jar a.jar 
