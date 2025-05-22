#
# Be sure to run `pod lib lint TIFastApp.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TIFastApp'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TIFastApp.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/manajay/TIFastApp'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manajay' => 'manajay.dlj@gmail.com' }
  s.source           = { :git => 'https://github.com/manajay/TIFastApp.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  # 子 Pod: App
  s.subspec 'App' do |sub|
    sub.source_files = 'TIFastApp/Classes/App/**/*.{h,m}'
    sub.public_header_files = 'TIFastApp/Classes/App/**/*.h'
    sub.frameworks = 'UIKit'
    sub.dependency 'Masonry'
    sub.dependency 'TIFastApp/Common'
    sub.dependency 'TIFastApp/Resource'
  end

  # 子 Pod: Common
  s.subspec 'Common' do |sub|
    sub.source_files = 'TIFastApp/Classes/Common/**/*.{h,m}'
    sub.public_header_files = 'TIFastApp/Classes/Common/**/*.h'
    sub.dependency 'MJExtension'
  end
  
  s.subspec 'Resource' do |ss|
       ss.resource_bundles = {'TIFastAppBundle' => ['TIFastApp/Assets/*.xcassets']}
  end

  s.default_subspecs = 'Common'
  
end
