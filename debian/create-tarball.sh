# This script creates the orig tarball based on woff-code-latest.zip
# provided by upstream. It must be run with the upstream version as
# the first argument.
# Author: Dmitry Shachnev <mitya57@gmail.com>, 2013

if [ -z $1 ]
then
  echo "Usage: $0 <version>"
  exit 1
fi

set -e
unzip woff-code-latest.zip -d woff-tools-$1
rm -f woff-tools-$1/*.html # File(s) with unknown license
tar -czf woff-tools_$1.orig.tar.gz woff-tools-$1
rm -rf woff-tools-$1

echo "Created woff-tools_$1.orig.tar.gz"
