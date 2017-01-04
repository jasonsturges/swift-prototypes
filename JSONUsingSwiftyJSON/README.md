## Installing Carthage

To install the `carthage` tool on your system, download and run the `Carthage.pkg` file for the latest  [release](https://github.com/Carthage/Carthage/releases); or alternately, until [issue #807](https://github.com/Carthage/Carthage/issues/807) is resolved **only on Xcode 6.x/Yosemite**, you can use [Homebrew](http://brew.sh) to install  `carthage` simply by running `brew update` and `brew install carthage`.

### Create a Cartfile

In this project, a Cartfile has already been created for you.

    # SwiftyJSON
    github "SwiftyJSON/SwiftyJSON"


### Carthage update

Run `carthage update`. This will fetch dependencies into a Carthage/Checkouts folder and build each one.

From Xcode, if you receive an error stating: "*Module compiled with Swift 3.0 cannot be imported in Swift 3.0.2*", compile the package locally instead of downloading the precompiled binary by using the command:

    carthage update --platform iOS --no-use-binaries


### If you're building for OS X

On your application targets’ “General” settings tab, in the “Embedded Binaries” section, drag and drop each framework you want to use from the Carthage/Build folder on disk.

### If you're building for iOS

1. On your application targets’ “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop each framework you want to use from the Carthage/Build folder on disk.
1. On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script with the following contents:

    sh
    /usr/local/bin/carthage copy-frameworks

and add the paths to the frameworks you want to use under “Input Files”, e.g.:

    $(SRCROOT)/Carthage/Build/iOS/SwiftyJSON.framework

This script works around an [App Store submission bug](http://www.openradar.me/radar?id=6409498411401216) triggered by universal binaries and ensures that necessary bitcode-related files are copied when archiving.
