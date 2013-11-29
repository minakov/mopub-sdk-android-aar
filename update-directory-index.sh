#!/bin/bash

for DIR in $(find ./ \( -name mopub-android-sdk -o -name build -o -name .git -o -name .gradle \) -prune -o -type d); do
  (
    echo "<html><body><h1>Directory listing</h1><hr/><pre>"
    ls -1p "${DIR}" | grep -v "^\./$" | grep -v "update-directory-index.sh" | grep -v "index.html" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }' 
    echo "</pre></body></html>"
  ) > "${DIR}/index.html"
done

find com -name index.html -exec git add {} \;
