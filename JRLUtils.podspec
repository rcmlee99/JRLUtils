#
# Be sure to run `pod lib lint JRLUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JRLUtils'
  s.version          = '0.1.1'
  s.summary          = 'This open-source utilities library contains categories that are useful for a wide range of application UIKit'
  s.description      = 'Category for finding the visible view controller in UIWindow, present alert with dismiss action style using Modal Presentation Popover style'

  s.homepage         = 'https://github.com/rcmlee99/JRLUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rcmlee99' => 'rcmlee99@gmail.com' }
  s.source           = { :git => 'https://github.com/rcmlee99/JRLUtils.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'JRLUtils/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'JRLUtils' => ['JRLUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
