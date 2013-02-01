#!/bin/bash

#---
# File: fix-perms-linux.sh
# Edit as required.  Use the if [ 1 -eq 1 ] to turn files on and off you may want 
# to not change.
#---

file=""
perms=""


if [ 1 -eq 1 ]; then
    file=/etc/at.deny
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/audit/audit.rules
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/audit/auditd.conf
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/bashrc
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/cron.deny
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi
if [ 1 -eq 1 ]; then
    file=/etc/crontab
    perms=0400
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/csh.cshrc
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/csh.login
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/cups/client.conf
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/cups/cupsd.conf
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/hosts
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/inittab
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then 
    file=/etc/login.defs
    perms=0640
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/networks
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/ntp.conf
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/pam.d/system-auth
    perms=0644
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/passwd
    perms=0644
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/profile
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/rc.d/init.d/auditd
    perms=0744
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/rc.d/rc.local
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/securetty
    perms=0400
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/security/access.conf
    perms=0640
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/security/console.perms
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/services
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/shells
    perms=0444
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/skel/.bashrc
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/sysctl.conf
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/root/.bash_logout
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/root/.bash_profile
    perms=0400
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/root/.cshrc
    perms=0400
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/root/.tcshrc
    perms=0400
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/var/log/dmesg
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/var/log/lastlog
    perms=0400
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/var/log/wtmp
    perms=0600
    if [ -f "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

#---
# Directories:
#---
if [ 1 -eq 1 ]; then
    file=/etc/cron.d
    perms=0750
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/cron.daily
    perms=0750
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/cron.hourly
    perms=0750
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/cron.monthly
    perms=0750
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/cron.weekly
    perms=0750
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/etc/security
    perms=0750
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/root
    perms=0700
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

# Not sure about this.  "SECSCN wants at 644." (drb)
if [ 0 -eq 1 ]; then
    file=/usr/share/doc
    perms=0644
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

# Not sure about this.  "SECSCN wants at 644." (drb)
if [ 0 -eq 1 ]; then
    file=/usr/share/man
    perms=0644
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi

if [ 1 -eq 1 ]; then
    file=/var/log/audit
    perms=0700
    if [ -d "$file" ]; then
	echo "Changing perms of $file to $perms"
	chmod $perms $file
    else 
	echo "$file does not exists."
    fi
fi




