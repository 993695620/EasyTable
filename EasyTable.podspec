#
# Be sure to run `pod lib lint EasyTable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EasyTable'
  s.version          = '1.0.0'
  s.summary          = '很容易创建一个UITableView表单'
  s.description      = <<-DESC
  在使用UITableView写表单的时候由于Cell各种样式，需要各种判断非常的麻烦，我就实现了一个简单的创建表单，只需要关心数据源
                       DESC
  s.homepage         = 'https://www.jianshu.com/u/621c3854d9d4'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuzhengkai' => '18311132469@163.com' }
  s.source           = { :git => 'git@github.com:993695620/EasyTable.git', :tag => '1.0.0' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'
  s.source_files = 'Classes/**/*.{swift}'
  
end
