###
# $Id: ossim.csh 9909 2006-11-17 20:18:29Z dburken $
# For csh / tcsh users do: source omar.sh
# The '.' is a dot.
# 
# Edit prefix as needed:
###
set ossim_bin=/usr/local/ossim/bin
if ( "${path}" !~ *$ossim_bin* ) then
   set path = ( $ossim_bin $path )
endif

setenv ANT_HOME /usr/local/ossim
# setenv GRAILS_HOME /usr/local/ossim/grails/latest
# setenv GROOVY_HOME /usr/local/ossim
setenv JAVA_HOME /usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
setenv OMAR_HOME /usr/local/ossim/omar/apps/omar
setenv OMAR_DEV_HOME /usr/local/ossim/omar
setenv OSSIM_DATA /data1
setenv OSSIM_INSTALL_PREFIX /usr/local/ossim
setenv OSSIM_PREFS_FILE /usr/local/ossim/share/ossim/ossim-preferences
setenv OSSIM_TEST /data1/test
