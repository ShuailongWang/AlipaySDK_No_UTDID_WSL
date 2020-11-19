#
#  Be sure to run `pod spec lint AlipaySDK_No_UTDID_WSL.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "AlipaySDK_No_UTDID_WSL"
  spec.version      = "15.8.0"
  spec.summary      = "解决集成百川sdk、友盟等sdk等出现UTDID冲突情况."
  
  spec.description      = <<-DESC
    AlipaySDK解决集成百川sdk、友盟等sdk等出现UTDID冲突情况.
                       DESC
                       
                       
  spec.homepage         = 'https://github.com/ShuailongWang/AlipaySDK_No_UTDID_WSL'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'WSL' => 'WSL' }
  spec.source           = { :git => 'https://github.com/ShuailongWang/AlipaySDK_No_UTDID_WSL.git', :tag => spec.version.to_s }
  
  spec.ios.deployment_target = '9.0'
  
  spec.vendored_frameworks = "AlipaySDK_No_UTDID_WSL/*.framework"
  spec.resource_bundles = {
      'AlipaySDK_No_UTDID_WSL' => ['AlipaySDK_No_UTDID_WSL/*.bundle']
  }
  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }
    
  spec.requires_arc = true
  spec.frameworks = "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "UIKit", "Foundation", "CFNetwork", "CoreMotion","WebKit"
  spec.libraries = "z", "c++"
    
end
