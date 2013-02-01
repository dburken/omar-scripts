#!/bin/bash

#---
# File: install-config-files.sh
#---

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...

if [ -z $1 ]
then
   echo "Usage: $0 <source_config_file_directory>"
   exit 1
fi

src_dir=$1
echo "Source config file directory = $src_dir"

dateString=$(date +%Y%m%d)

command="echo $dateString"
$command

echo "Date: $dateString"

# /etc/fail2ban/fail2ban.conf:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/fail2ban/fail2ban.conf

   if [ -f "$sourceFile" ]; then
      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/fail2ban/fail2ban.conf

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0644
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/fail2ban/jail.conf:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/fail2ban/jail.conf

   if [ -f "$sourceFile" ]; then
      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/fail2ban/jail.conf
         
         if [ -f "$destinationFile" ]; then
	    command="cp $destinationFile $destinationFile.$dateString"
	    echo $command
	    $command
	 fi

	 command="cp $sourceFile $destinationFile"
	 echo $command
	 $command

	 perms=0644
	 command="chmod $perms $destinationFile"
	 echo $command
	 $command
      fi
   fi
fi
   
# /etc/httpd/conf/httpd.conf:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/httpd/conf/httpd.conf

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/httpd/conf/httpd.conf

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0644
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/httpd/conf.d/omar-httpd.conf:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/httpd/conf.d/omar-httpd.conf

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/httpd/conf.d/omar-httpd.conf

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0664
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/init.d/omar
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/init.d/omar

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/init.d/omar

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0755
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/init.d/omar-workflow
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/init.d/omar-workflow

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/init.d/omar-workflow

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0755
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/ld.so.conf.d/ossim.conf:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/ls.so.conf.d/ossim.conf

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/ld.so.conf.d/ossim.conf

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0644
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi

# /usr/local/ossim/omar/omarConfig.groovy:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/usr/local/ossim/omar/omarConfig.groovy

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         command="mkdir -p /usr/local/ossim/omar"
         echo $command
         $command

         destinationFile=/usr/local/ossim/omar/omarConfig.groovy

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0644
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi

# /etc/selinux/targeted/modules/active/modules/omarexim.pp
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/selinux/targeted/modules/active/modules/omarexim.pp

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/selinux/targeted/modules/active/modules/omarexim.pp

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0600
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi

# /etc/selinux/targeted/modules/active/modules/omarsepolicy.pp
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/selinux/targeted/modules/active/modules/omarsepolicy.pp

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/selinux/targeted/modules/active/modules/omarsepolicy.pp

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0600
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi  
# pam.d/sshd:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/pam.d/sshd

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/pam.d/sshd

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0644
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/profile.d/ossim.sh 
enabled=1
if [ $enabled -eq 1 ]; then
   
   sourceFile=$src_dir/etc/profile.d/ossim.sh

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/profile.d/ossim.sh

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0644
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/profile.d/ossim.csh 
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/profile.d/ossim.csh

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/profile.d/ossim.csh

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0644
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi
   
# /etc/ssh/sshd_config 
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/ssh/sshd_config

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then
      
         destinationFile=/etc/ssh/ssh_config

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command

         perms=0600
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi

# /etc/sysconfig/iptables
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=$src_dir/etc/sysconfig/iptables

   if [ -f "$sourceFile" ]; then

      answer=
      echo "File: $sourceFile"
      echo -n "Replace[y/n]: "
      read answer
      if [ "$answer" == 'y' ]; then

         destinationFile=/etc/sysconfig/iptables

         if [ -f "$destinationFile" ]; then
            command="cp $destinationFile $destinationFile.$dateString"
            echo $command
            $command
         fi

         command="cp $sourceFile $destinationFile"
         echo $command
         $command
      
         perms=0600
         command="chmod $perms $destinationFile"
         echo $command
         $command
      fi
   fi
fi

exit 0
