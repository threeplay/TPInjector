#
# Be sure to run `pod lib lint TPInjector.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TPInjector'
  s.version          = '0.2.0'
  s.summary          = 'Swift dependency injection'
  s.description      = <<-DESC
Simple swift dependency injection framework
                       DESC

  s.homepage         = 'https://github.com/threeplay/TPInjector'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eliran Ben-Ezra' => 'eliran@threeplay.com' }
  s.source           = { :git => 'https://github.com/threeplay/TPInjector.git', :tag => s.version.to_s }

  s.swift_version = "4.0"
  s.platform = :osx
  s.osx.deployment_target = "10.10"

  s.source_files = 'TPInjector/Classes/**/*'
end
