#!/bin/sh

export DRIVER=com.mysql.jdbc.Driver
export USERNAME=root
export URL="jdbc:mysql://localhost/tutorial_spring?createDatabaseIfNotExist=true&useUnicode=true&characterEncoding=utf-8"
export FILE=target/generatedChangeLog.xml

java -jar lib/liquibase-core-1.9.5.jar --url=$URL --driver=$DRIVER --username=$USERNAME --changeLogFile=$FILE --classpath=lib/mysql-connector-java-5.0.5.jar generateChangeLog
