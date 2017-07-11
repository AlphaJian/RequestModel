pod
Pod::Spec.new do |s|
  s.name             = ‘Request Model’
  s.version          = '0.1.0'
  s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/AlphaJian/RequestModel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '<YOUR NAME HERE>' => '<YOUR EMAIL HERE>' }
  s.source           = { :git => 'https://github.com/AlphaJian/RequestModel.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = ‘*.swift’
 
end