#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.vmic.xyz/${USER_NAME}/${POD_NAME}'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://gitlab.vmic.xyz/ios/${POD_NAME}.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = '${POD_NAME}/Classes/**/*'
  s.vendored_libraries = ['${POD_NAME}/Classes/**/**/*.a']
  s.vendored_frameworks = ['${POD_NAME}/Classes/**/**/*.framework']
  s.public_header_files = '${POD_NAME}/Classes/Public/**/*.h'
  # s.prefix_header_contents = '#import "VVBase.h"'

  s.resource_bundles = {
    '${POD_NAME}' => ['${POD_NAME}/Assets/**/*.*','${POD_NAME}/Resources/**/*.*']
  }

  # 将bundle拷贝到主工程,否则bundle嵌套
  s.resources =  ['${POD_NAME}/**/**/*.bundle']


  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
