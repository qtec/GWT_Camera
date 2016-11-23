#!/bin/sh
PATH=$PATH:/usr/java/bin
export MALLOC_ARENA_MAX=1
cd `dirname "$0"`
java -Djava.library.path=. -Xcheck:jni -Xms32m -Xmx128m -XX:MaxPermSize=16m -classpath runner.jar JettyRunner -port 80 -war ROOT.war
