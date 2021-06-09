
Pod::Spec.new do |spec|
  spec.name             = 'CometChatPro'
  spec.version          = '3.0.0-beta5'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com/pro'
  spec.authors          = {  'Abhishek Saralaya' => 'abhishek.saralaya@inscripts.in', 'pushpsen' => 'pushpsen.airekar@inscripts.com'}
  spec.summary          = 'CometChatPro is a platform for integrating voice, video & text messaging experiences into your websites, web apps and mobile apps'
  spec.source          = { :http => 'https://library.cometchat.io/ios/v2.0/xcode12/CometChatPro_3_0_0-beta5.zip'}
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  spec.documentation_url = 'https://prodocs.cometchat.com/v2.0/docs/ios-quick-start'
  spec.vendored_frameworks = 'Vendors/CometChatPro.xcframework', 'Vendors/Starscream.xcframework'
  spec.exclude_files    = "Classes/Exclude"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.platform         = :ios, "11.0"
  spec.dependency 'CometChatCalls', '2.0.3'
end
