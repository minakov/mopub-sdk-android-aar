#!/bin/bash

cd ..
git clone -b gh-pages --single-branch https://github.com/minakov/mopub-sdk-android-aar.git mopub-sdk-android-aar-pages

cd mopub-sdk-android-aar
mvn install:install-file -Dfile=build/libs/mopub-sdk-android-aar.aar -DgroupId=com.mopub.mobileads -DartifactId=mopub-android -Dversion="1.0" -Dpackaging=aar -DlocalRepositoryPath=../vf-mopub-sdk-android-aar-pages

cd ../mopub-sdk-android-aar-pages
for DIR in $(find ./ \( -name mopub-android-sdk -o -name build -o -name .git -o -name .gradle \) -prune -o -type d); do
  (
    echo "<html><body><h1>Directory listing</h1><hr/><pre>"
    ls -1p "${DIR}" | grep -v "^\./$" | grep -v "index.html" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }' 
    echo "</pre></body></html>"
  ) > "${DIR}/index.html"
done

