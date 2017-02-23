# GradleXcodeSubprojectExample

A Gradle multi-project build example showing an issue with gradle-xcodePlugin in the subproject.

The root-level library (pod) and the Example (app) subfolder together make up a multi-project Gradle build.
The Example app builds using the gradle-xcodePlugin. However, running `gradle build` from the root folder
causes errors.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

GradleXcodeSubprojectExample is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GradleXcodeSubprojectExample"
```

## Author

Ben Chatelain, ben@octop.ad

## License

GradleXcodeSubprojectExample is available under the MIT license. See the LICENSE file for more info.
