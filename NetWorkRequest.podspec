
Pod::Spec.new do |s|
  s.name             = 'NetWorkRequest'
  s.version          = '0.1.0'
  s.summary          = 'NetWorkRequest'

  s.description      = <<-DESC
NetWorkRequest
                       DESC
  s.homepage         = 'https://github.com/qibaozhen/NetWorkRequest.git'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '齐春宝' => '@qqbbzz@126.com' }
  s.source           = { :git => 'https://github.com/qibaozhen/NetWorkRequest.git', :tag => s.version.to_s }
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
