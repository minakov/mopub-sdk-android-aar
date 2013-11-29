MoPub Android SDK Android ARchive
========================

MoPub Android SDK library built with gradle in aar format for usage with android gradle build system.

How to use
=======================
Before you can get aar you should checkout [mopub-android-sdk](https://github.com/mopub/mopub-android-sdk.git) submodule. Overall build process including build is straightforward:
```bash
  $ git submodule update --init
  ...
  $ ./gradlew build
  ...
```

When build is finished aar file will be located in `build/libs`.

Maven artifact
=======================

```bash
  $ mvn install:install-file \
  -Dfile=build/libs/vf-mopub-sdk-android-aar.aar \
  -DgroupId=com.mopub.mobileads \
  -DartifactId=mopub-android \
  -Dversion="1.0" \
  -Dpackaging=aar
```

build.gradle example
======================

* local repo

```groovy
...

repositories {
    mavenLocal()
    ...
}

dependencies {
    compile 'com.mopub.mobileads:mopub-android:+@aar'
    ...
}
```

* remote repo

```groovy
...

repositories {
    maven( url "http://minakov.github.io/mopub-sdk-android-aar" )
    ...
}

dependencies {
    compile 'com.mopub.mobileads:mopub-android:+@aar'
    ...
}
```

> In your `build.gradle` include `maven( url "http://minakov.github.io/mopub-sdk-android-aar" )` as repository priorior to `mavenCentral()`


License
--------

    Copyright 2013 Vladimir Minakov

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

