*
#!/bin/bash

#---
# File: snap-config-files.sh
#---

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...

if [ -z $1 ]; then
   echo "Usage: $0 <destination_config_file_directory>"
   exit 1
fi

dst_dir=$1
echo "Destination config file directory = $dst_dir"

command="mkdir -p $dst_dir"
echo $command
$command

# /etc/fail2ban/fail2ban.conf:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/fail2ban/fail2ban.conf

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/fail2ban/fail2ban.conf

      command="mkdir -p $dst_dir/etc/fail2ban"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/fail2ban/jail.conf:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/fail2ban/jail.conf

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/fail2ban/jail.conf

      command="mkdir -p $dst_dir/etc/fail2ban"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/httpd/conf/httpd.conf
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/httpd/conf/httpd.conf

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/httpd/conf/httpd.conf

      command="mkdir -p $dst_dir/etc/httpd/conf"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/httpd/conf.d/omar-httpd.conf
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/httpd/conf.d/omar-httpd.conf

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/httpd/conf.d/omar-httpd.conf

      command="mkdir -p $dst_dir/etc/httpd/conf.d"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/init.d/omar
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/init.d/omar

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/init.d/omar

      command="mkdir -p $dst_dir/etc/init.d"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/init.d/omar-workflow
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/init.d/omar-workflow

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/init.d/omar-workflow

      command="mkdir -p $dst_dir/etc/init.d"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/ld.so.conf.d/ossim.conf
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/ld.so.conf.d/ossim.conf

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/ld.so.conf.d/ossim.conf

      command="mkdir -p $dst_dir/etc/ld.so.conf.d"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi


# /usr/local/ossim/omar/omarConfig.groovy:
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/usr/local/ossim/omar/omarConfig.groovy

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/usr/local/ossim/omar/omarConfig.groovy

      command="mkdir -p $dst_dir/usr/local/ossim/omar"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi



# /etc/selinux/targeted/modules/active/modules/omarexim.pp
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/selinux/targeted/modules/active/modules/omarexim.pp

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/selinux/targeted/modules/active/modules/omarexim.pp

      command="mkdir -p $dst_dir/etc/selinux/targeted/modules/active/modules"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/selinux/targeted/modules/active/modules/omarsepolicy.pp
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/selinux/targeted/modules/active/modules/omarsepolicy.pp

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/selinux/targeted/modules/active/modules/omarsepolicy.pp

      command="mkdir -p $dst_dir/etc/selinux/targeted/modules/active/modules"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/pam.d/sshd
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/pam.d/sshd

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/pam.d/sshd

      command="mkdir -p $dst_dir/etc/pam.d/"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/profile.d/ossim.sh
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/profile.d/ossim.sh

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/profile.d/ossim.sh

      command="mkdir -p $dst_dir/etc/profile.d"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/profile.d/ossim.csh
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/profile.d/ossim.csh

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/profile.d/ossim.csh

      command="mkdir -p $dst_dir/etc/profile.d"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/ssh/ssh_config
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/ssh/ssh_config

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/ssh/ssh_config

      command="mkdir -p $dst_dir/etc/ssh"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi

# /etc/sysconfig/iptables
enabled=1
if [ $enabled -eq 1 ]; then

   sourceFile=/etc/sysconfig/iptables

   if [ -f "$sourceFile" ]; then

      destinationFile=$dst_dir/etc/sysconfig/iptables

      command="mkdir -p $dst_dir/etc/sysconfig"
      echo $command
      $command

      command="cp $sourceFile $destinationFile"
      echo $command
      $command
   fi
fi
