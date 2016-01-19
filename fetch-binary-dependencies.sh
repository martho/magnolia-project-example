#!/usr/bin/env bash

rm -rf bin
mkdir -p bin
curl -0 http://mirror2.shellbot.com/apache/tomcat/tomcat-8/v8.0.30/bin/apache-tomcat-8.0.30.tar.gz | tar -xz -C ./bin