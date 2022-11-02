#!/bin/bash
# Create a macfile with entries like so...
# 1ceec90228d8
# The output will be...
# 1c-ee-c9-02-28-d8.ipxe
input="macfile.501"
while IFS= read -r line
do
  KIOSKMAC=`echo $line | sed 's/../&-/g;s/-$//'`
  echo "symlinking $KIOSKMAC to 7.6-httpsboot-x86_64.ipxe..."
  ln -sfn 7.6-httpsboot-x86_64.ipxe $KIOSKMAC.ipxe
done < "$input"
