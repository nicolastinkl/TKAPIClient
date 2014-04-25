Pod::Spec.new do |s|
  s.name         = 'TKAPIClient'
  s.version      = '1.0.1'
  s.license      =  {:type => 'MIT (LICENSE)'}
  s.homepage     = 'https://github.com/nicolastinkl/TKAPIClient'
  s.authors      =  {'tinkl' => 'nicolastinkl@gmail.com'}
  s.summary      = 'TKAPIClient is an Objective-C library for iOS developers.'

# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  {:git => 'git@github.com:nicolastinkl/TKAPIClient.git'}
  s.source_files = 'TKAPIClient','TKAPIClient/*.{h,m}'
  s.framework    =   'Foundation', 'CoreGraphics', 'UIKit'

  s.requires_arc = true
  s.documentation = {}

# Pod Dependencies
s.dependency = 'AFNetworking', '~> 2.2.3'
s.dependency = 'JSONKit', '~> 1.5pre'
s.dependency = 'SocketRocket', '~> 0.3.1-beta2'
s.dependency = 'SDWebImage', '~> 3.6'


end
