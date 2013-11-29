mopub-sdk-android-aar
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
  ...
```

`build.gradle` example
======================
```groovy
...

repositories {
    ...
    mavenLocal()
}

dependencies {
    compile 'com.mopub.mobileads:mopub-android:+@aar'
    ...
}
```