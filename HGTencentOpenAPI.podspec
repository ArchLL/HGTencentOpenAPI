#
# Be sure to run `pod lib lint HGTencentOpenAPI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HGTencentOpenAPI'
  s.version          = '3.5.2'
  s.license          = 'MIT'
  s.summary          = '个人使用的TencentOpenAPI的pod库'
  s.description      = %{
    对TencentOpenAPI进行了封装，方便使用.
  }                       
  s.homepage         = 'https://github.com/ArchLL/HGTencentOpenAPI'
  s.author           = { 'Tencent' => 'https://open.tencent.com' }
  s.source           = { :git => 'https://github.com/ArchLL/HGTencentOpenAPI.git', :tag => s.version.to_s }
  s.frameworks            = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony'
  s.libraries             = 'iconv', 'sqlite3', 'c++', 'z'
  s.vendored_frameworks   = 'TencentOpenAPI/TencentOpenAPI.framework'
  s.ios.deployment_target = '9.0'
  s.ios.frameworks = 'UIKit', 'Foundation', 'WebKit'
  s.requires_arc = true
  # 解决在xcode 12下验证不通过的问题
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
