Pod::Spec.new do |s|

  s.name         = "PaySDK"
  s.version      = “0.0.2”
  s.summary      = "SDK for weixin,alipay and unionpay"
  s.homepage     = "https://github.com/Xiaotengzxf/PaySDK"
  s.license      = "MIT"
  s.author       = { "Xiaotengzxf" => "315082431@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = {:git => "https://github.com/Xiaotengzxf/PaySDK.git", :tag => “0.0.2”}
  s.requires_arc = true
  s.default_subspecs = "Central", "Alipay", "WeiXin"

  s.subspec 'Central' do |central|
	central.vendored_frameworks = 'PaySDK/TTG/PaySDK.framework'
	central.resource = 'PaySDK/TTG/PaySDK.bundle'
	central.requires_arc = true
	central.ios.library = 'c++', 'z'
	central.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
	central.dependency = 'PaySDK/Alipay'
	central.dependency = 'PaySDK/WeiXin'
  end

  s.subspec 'Alipay' do |alipay|
	alipay.vendored_frameworks = 'PaySDK/Channel/Alipay/AlipaySDK.framework'
	#alipay.source_files = 'PaySDK/Channel/Alipay/*.h'
	#alipay.dependency 'PaySDK/Central'	
  end

  s.subspec 'WeiXin' do |weixin|
	weixin.vendored_libraries = 'PaySDK/Channel/WeiXin/libWeChatSDK.a'
	weixin.source_files = 'PaySDK/Channel/WeiXin/*.h'
	weixin.ios.library = 'sqlite3'
	#weixin.dependency = 'PaySDK/Central'
  end

end
