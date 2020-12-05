#
# Be sure to run `pod lib lint HoloResource.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HoloResource'
  s.version          = '0.1.1'
  s.summary          = '组件化资源文件管理组件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
组件化资源文件管理方案，建议提供静态库，使用 resource_bundles 存储资源文件.
                       DESC

  s.homepage         = 'https://github.com/HoloFoundation/HoloResource'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gonghonglou' => 'gonghonglou@icloud.com' }
  s.source           = { :git => 'https://github.com/HoloFoundation/HoloResource.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HoloResource/Classes/**/*'
  
  s.resource_bundles = {
    'HoloResource' => ['HoloResource/Assets/*']
  }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
