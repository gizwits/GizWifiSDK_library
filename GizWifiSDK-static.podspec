Pod::Spec.new do |s|
  s.name         = "GizWifiSDK-static"
  s.version      = "0.0.1.#{("a".."z").to_a.index 'u'}"
  s.summary      = "GizWifiSDK static library for iOS"
  s.description  = "GizWifiSDK is a Wi-Fi hardware communication toolkit. Support architechures: armv7, arm64, x86_64, i386"
  s.homepage     = "http://http://club.gizwits.com/"
  s.source       = { :git => "https://gitlab.gizwits.com/assistant_tools/GizWifiSDK-static.git", :tag => "#{s.version}" }

  s.ios.deployment_target = '6.0'
  s.ios.source_files        = 'Headers/GizWifiSDK/*.h'
  s.ios.public_header_files = 'Headers/GizWifiSDK/*.h'
  s.ios.header_dir          = 'Headers'
  s.ios.preserve_paths      = 'Library/libGizWifiSDK.a', 'Library/libBLEasyConfig.a', 'Library/libcrypto.a', 'Library/libEasyLink.a', 'Library/libemTMF.a', 'Library/libEsptouch_v0.3.5.0.a', 'Library/libssl.a'
  s.ios.vendored_libraries  = 'Library/libGizWifiSDK.a', 'Library/libBLEasyConfig.a', 'Library/libcrypto.a', 'Library/libEasyLink.a', 'Library/libemTMF.a', 'Library/libEsptouch_v0.3.5.0.a', 'Library/libssl.a'

  s.libraries = 'GizWifiSDK', 'BLEasyConfig', 'crypto', 'EasyLink', 'emTMF', 'Esptouch_v0.3.5.0', 'ssl'
  s.requires_arc = true
end
