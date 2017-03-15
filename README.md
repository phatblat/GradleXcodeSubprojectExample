# GradleXcodeSubprojectExample

A Gradle multi-project build example showing an issue with [gradle-xcodePlugin](https://github.com/openbakery/gradle-xcodePlugin)
in the subproject.

This is a typical CocoaPods library project setup (created using `pod lib create` standard template)
with a root-level library (pod) and the Example (app) subfolder. They make up a multi-project Gradle build
because `settings.gradle` links them together.
The Example app builds using gradle-xcodePlugin. However, running `gradle build` from the root folder
causes errors.

### Folder Structure

```
.
├── Example
│   ├── GradleXcodeSubprojectExample.xcodeproj
│   ├── GradleXcodeSubprojectExample.xcworkspace
│   ├── Podfile
│   └── build.gradle
├── GradleXcodeSubprojectExample.podspec
├── build.gradle
└── settings.gradle
```

## Issue

The following issue was found in gradle-xcodePlugin version 0.14.5.

### Steps to Reproduce

1. Clone this repo
1. `cd` into the top level folder
1. Run `gradle build`

### Expected Results

- Gradle will successfully run the `:Example:build` task in the subproject
and all depedenent tasks, including `xcodebuildConfig` and `xcodebuild`.

### Actual Results

- The `:Example:xcodebuildConfig` task fails because it can't find the `.xcodeproj` file.

````
$ cd GradleXcodeSubprojectExample
$ gradle build
:Example:cocoapodsInstall
:Example:xcodebuildConfig FAILED

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':Example:xcodebuildConfig'.
> Project file does not exist: GradleXcodeSubprojectExample.xcodeproj/project.pbxproj
````

### Workaround

1. `cd` into `GradleXcodeSubprojectExample/Example` subproject folder
1. Run `build` task

```
$ cd GradleXcodeSubprojectExample/Example
$ gradle build
:Example:cocoapodsInstall
:Example:xcodebuildConfig
:Example:infoplistModify
:Example:xcodebuild
Done
:Example:assemble
:Example:check UP-TO-DATE
:Example:build

BUILD SUCCESSFUL
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

This does not need to be done to reproduce the gradle-xcodePlugin issue.

## Requirements

- Xcode 8.2+
- CocoaPods 1.1+

## Author

Ben Chatelain, ben@octop.ad

## License

GradleXcodeSubprojectExample is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
