#---
# File: /etc/profile.d/ossim.sh
#---

OSSIM_SANDBOX=/usr/local/ossim

# Local build "development" directory.
dev=/work/test

# ANT                                                                        
export ANT_HOME=$OSSIM_SANDBOX/ant/latest
if ! echo ${PATH} | /bin/grep -q $ANT_HOME/bin ; then
   PATH=$ANT_HOME/bin:${PATH}
fi

# GROOVY
# export GROOVY_HOME=$OSSIM_SANDBOX/groovy/latest
# if ! echo ${PATH} | /bin/grep -q $GROOVY_HOME/bin ; then
#   PATH=$GROOVY_HOME/bin:${PATH}
# fi
# GRAILS
#export GRAILS_HOME=$OSSIM_SANDBOX/grails/latest
#if ! echo ${PATH} | /bin/grep -q $GRAILS_HOME/bin ; then
#   PATH=$GRAILS_HOME/bin:${PATH}
#fi

# OSSIM
ossim_bin=$OSSIM_SANDBOX/bin
if ! echo ${PATH} | /bin/grep -q $ossim_bin ; then
   PATH=$ossim_bin:${PATH}
fi
export PATH

#export CATALINA_HOME=$OSSIM_SANDBOX/tomcat/latest

# CLASSPATH for java
# export CLASSPATH=$OSSIM_SANDBOX/java/lib/joms.jar:$OSSIM_SANDBOX/java/lib/ossimjni.jar
# export CLASSPATH=$OSSIM_SANDBOX/omar/plugins/omar-oms/lib/joms.jar:/usr/share/java/xerces-j2.jar

export JAVA_HOME=/usr/lib/jvm/java
# export JAVA_OPTS="$JAVA_OPTS -Xms256m -Xmx512m"
export JRE_HOME=/usr/lib/jvm/jre

# LD_LIBRARY_PATH needed for java
export LD_LIBRARY_PATH=$OSSIM_SANDBOX/java/lib/x86_64

export OMAR_DEV_HOME=${dev}/omar
export OMAR_HOME=$OMAR_DEV_HOME/apps/omar
export OSSIM_BATCH_TEST_DATA=/data1/test/data
export OSSIM_BATCH_TEST_RESULTS=/data1/test/results
export OSSIM_DATA=/data1
export OSSIM_DIST_ROOT=$OSSIM_SANDBOX
export OSSIM_INSTALL_PREFIX=$OSSIM_SANDBOX
export OSSIM_PREFS_FILE=$OSSIM_SANDBOX/share/ossim/ossim-preferences
export OSSIM_TEST=/data1/test
export PGDATA=/var/lib/pgsql/data
export PG_HOME=/usr
export PG_PORT=5432
# export POSTGIS_HOME=/usr/share/pgsql/contrib/postgis-1.5
export POSTGIS_HOME=/usr/share/pgsql/contrib
export OMAR_CONFIG=$OSSIM_INSTALL_PREFIX/omar/omarConfig.groovy

