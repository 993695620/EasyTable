#
# Be sure to run `pod lib lint EasyTable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EasyTable'
  s.version          = '0.1.0'
  s.summary          = 'A short description of EasyTable.'
  s.description      = <<-DESC
  非常容易得创建TABLE表单
                       DESC
  s.homepage         = 'https://github.com/yuzhengkai/EasyTable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuzhengkai' => '18311132469@163.com' }
  s.source           = { :git => 'https://github.com/yuzhengkai/EasyTable.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.source_files = 'Classes/**/*.{swift}'
  
end
