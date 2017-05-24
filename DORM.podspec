#
# Be sure to run `pod lib lint DORM.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DORM'
  s.version          = '0.1.3'
  s.summary          = 'It is Assistant Library For New iOS Developer'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'It is Assistant Library For New iOS Developer. So If you use this library, you can easily get familiar with iOS Development. We are rooting for you!'

  s.homepage         = 'https://github.com/Dormmate/DORMLibrary'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'skrth00@gmail.com' => 'skrth00@naver.com' }
  s.source           = { :git => 'https://github.com/Dormmate/DORMLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DORM/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DORM' => ['DORM/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
