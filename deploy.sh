#!/bin/sh
set -e

sudo apt-get install -y lftp

lftp -c "set ftps:initial-prot ''; open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv public .; quit;"
