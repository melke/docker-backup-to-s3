#!/bin/bash

set -e

name=/tmp/backup-`date -u +%Y%m%d%H%M%S`.tar.bz2
tar -cjvf $name $1/*
/usr/bin/s3cmd put "$name" $2
rm $name
