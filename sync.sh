#!/bin/bash

set -e

/usr/bin/s3cmd sync "$1" "$2"
