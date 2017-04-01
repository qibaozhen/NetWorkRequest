
Pod::Spec.new do |s|
  s.name             = 'NetWorkRequest'
  s.version          = '0.1.1'
  s.summary          = 'NetWorkRequest http helper helper'

  s.description      = <<-DESC
NetWorkRequest http request support https
                       DESC
  s.homepage         = 'https://git.coding.net/qibaozhen/NetWorkRequest.git'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '齐春宝' => '@qqbbzz@126.com' }
  s.source           = { :git => 'https://git.coding.net/qibaozhen/NetWorkRequest.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'NetWorkRequest/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NetWorkRequest' => ['NetWorkRequest/Assets/*.png']
  # }

   s.public_header_files = 'NetWorkRequest/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'AFNetworking'
   s.dependency 'SBJson'
end
