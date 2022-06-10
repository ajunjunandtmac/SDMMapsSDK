#
# Be sure to run `pod lib lint SDMMapsSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SDMMapsSDK'
  s.version          = '0.1.0'
  s.summary          = 'Aggregate Maps'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        Aggregate Map for easy map integrating.
                       DESC

  s.homepage         = 'https://github.com/ajunjunandtmac/SDMMapsSDK.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'steven' => '120489458@qq.com' }
  s.source           = { :git => 'git@github.com:ajunjunandtmac/SDMMapsSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'SDMMapsSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SDMMapsSDK' => ['SDMMapsSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
