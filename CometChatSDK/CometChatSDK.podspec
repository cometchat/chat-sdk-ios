
Pod::Spec.new do |spec|
  spec.name             = 'CometChatSDK'
  spec.version          = '4.0.0-beta7'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com/pro'
  spec.authors          = {  'Abhishek Saralaya' => 'abhishek.saralaya@inscripts.in', 'Jitvar Patil' => 'jitvar.patil@cometchat.com'}
  spec.summary          = 'CometChat is a platform for integrating voice, video & text messaging experiences into your websites, web apps and mobile apps'
  spec.source          = { :http => 'https://library.cometchat.io/ios/v4.0/xcode14/CometChatSDK_4_0_0_beta7.zip'}
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  spec.documentation_url = 'https://prodocs.cometchat.com/v2.0/docs/ios-quick-start'
  spec.vendored_frameworks = 'Vendors/CometChatSDK.xcframework', 'Vendors/CometChatStarscream.xcframework'
  spec.exclude_files    = "Classes/Exclude"
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.platform         = :ios, "11.0"
end
