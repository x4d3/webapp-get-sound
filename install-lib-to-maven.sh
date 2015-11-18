#!/bin/sh
# http://randomizedsort.blogspot.jp/2011/10/configuring-maven-to-use-local-library.html
mvn install:install-file -Dfile=lib/jsapi.jar -DgroupId=external-jar -DartifactId=jsapi -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/sphinx4.jar -DgroupId=external-jar -DartifactId=sphinx4 -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/voce.jar -DgroupId=external-jar -DartifactId=voce -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/WSJ_8gau_13dCep_16k_40mel_130Hz_6800Hz.jar -DgroupId=external-jar -DartifactId=WSJ_8gau_13dCep_16k_40mel_130Hz_6800Hz -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/cmu_us_kal.jar -DgroupId=external-jar -DartifactId=cmu_us_kal -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/cmulex.jar -DgroupId=external-jar -DartifactId=cmulex -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/en_us.jar -DgroupId=external-jar -DartifactId=en_us -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/freetts.jar -DgroupId=external-jar -DartifactId=freetts -Dversion=1.0 -Dpackaging=jar