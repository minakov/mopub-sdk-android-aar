mopub-sdk-android-aar
=====================

MoPub Android SDK library built with gradle in aar format for usage with android gradle build system.

build.gradle example
======================

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
