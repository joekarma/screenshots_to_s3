#!/bin/bash

URL_OF_S3_BUCKET_FOR_SCREENSHOTS=s3://textninja
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILE_NAME=`date "+%Y%m%d_%H%M%S.png"`
FILE_PATH=$DIR/$FILE_NAME

screencapture $FILE_PATH
[ -z "$URL_OF_S3_BUCKET_FOR_SCREENSHOTS" ] || aws s3 mv $FILE_NAME $URL_OF_S3_BUCKET_FOR_SCREENSHOTS/$FILE_NAME --sse

at now + 10 minutes << END
  "$0" "$@"
END