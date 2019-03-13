#
# Be sure to run `pod lib lint DynLoc.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DynLoc'
  s.version          = '0.0.1'
  s.swift_version    = '4.2'
  s.summary          = 'Dynamic localization for storyboard.'
  s.description      = <<-DESC
                       This framework lets you write localized UIKit elements based on an identifier
                       string that you can define in the Interface Builder.
                       DESC

  s.homepage         = 'https://github.com/yxdunc/DynLoc'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Robin Guignard-Perret' => 'yxdunc@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/yxdunc/DynLoc.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/rguignar'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DynLoc/Classes/**/*'

   s.frameworks = 'UIKit'
   s.dependency 'Localize-Swift', '~> 2.0'
end
