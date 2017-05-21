#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILE_NAME=$DIR/`date "+%Y%m%d_%H%M%S.png"`

screencapture $FILE_NAME

at now + 1 minute << END
  "$0" "$@"
END