#!/bin/bash

# env
WEBROOT_PATH="/media/website-cv/website/"
DOMAIN="onmyown.pp.ua"

# update command
certbot certonly --webroot --webroot-path $WEBROOT_PATH -d $DOMAIN --non-interactive --force-renewal

# chek exit code 
if [ $? -eq 0 ]; then
    echo "Certificate updated successfully!"
else
    echo "An error occurred while updating the certificate!"
    exit 1
fi
