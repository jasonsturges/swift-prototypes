## Summary

Mustache templates for Swift using [GRMustache.swift](https://github.com/groue/GRMustache.swift)

This project shows the example usage of rendering a mustache file:

File: document.mustache

    Hello {{name}}
    Your beard trimmer will arrive on {{format(date)}}.
    {{#late}}
    Well, on {{format(realDate)}} because of a Martian attack.
    {{/late}}

Code to load and render template:

    import Mustache

    // Load the `document.mustache` resource of the main bundle
    let template = try Template(named: "document")

    // Let template format dates with `{{format(...)}}`
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    template.register(dateFormatter, forKey: "format")

    // The rendered data
    let data: [String: Any] = [
        "name": "Arthur",
        "date": Date(),
        "realDate": Date().addingTimeInterval(60*60*24*3),
        "late": true
    ]

    // The rendering: "Hello Arthur..."
    let rendering = try template.render(data)


## Installing Carthage

To install the `carthage` tool on your system, download and run the `Carthage.pkg` file for the latest  [release](https://github.com/Carthage/Carthage/releases); or alternately, until [issue #807](https://github.com/Carthage/Carthage/issues/807) is resolved **only on Xcode 6.x/Yosemite**, you can use [Homebrew](http://brew.sh) to install  `carthage` simply by running `brew update` and `brew install carthage`.

### Create a Cartfile

In this project, a Cartfile has already been created for you.

    # GRMustache
    github "groue/GRMustache.swift"


### Carthage update

Run `carthage update`. This will fetch dependencies into a Carthage/Checkouts folder and build each one.

From Xcode, if you receive an error stating: "*Module compiled with Swift 3.0 cannot be imported in Swift 3.0.2*", compile the package locally instead of downloading the precompiled binary by using the command:

    carthage update --platform iOS --no-use-binaries


### If you're building for OS X

On your application targets’ “General” settings tab, in the “Embedded Binaries” section, drag and drop each framework you want to use from the Carthage/Build folder on disk.
