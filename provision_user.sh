#!/bin/bash

USERNAME=$1
LOGFILE="provisioning.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if [ -z "$USERNAME" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

echo "[$TIMESTAMP] Provisioning user: $USERNAME" >> $LOGFILE
useradd -m -s /bin/bash "$USERNAME"
echo "[$TIMESTAMP] User $USERNAME created successfully" >> $LOGFILE

echo "Fertig. User $USERNAME wurde angelegt."
