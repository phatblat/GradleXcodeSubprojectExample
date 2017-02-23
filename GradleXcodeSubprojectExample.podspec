Pod::Spec.new do |s|
  s.name             = 'GradleXcodeSubprojectExample'
  s.version          = '0.1.0'
  s.summary          = 'Gradle multi-project example showing issue with gradle-xcodePlugin in subproject.'
  s.description      = <<-DESC
The root-level library (pod) and the Example (app) subfolder together make up a multi-project Gradle build.
The Example app builds using the gradle-xcodePlugin. However, running `gradle build` from the root folder
causes errors.
                       DESC

  s.homepage         = 'https://github.com/phatblat/GradleXcodeSubprojectExample'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'Ben Chatelain': 'ben@octop.ad' }
  s.source           = { git: 'https://github.com/phatblat/GradleXcodeSubprojectExample.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/phatblat'

  s.ios.deployment_target = '10.0'

  s.source_files = 'GradleXcodeSubprojectExample/Classes/**/*'
end
