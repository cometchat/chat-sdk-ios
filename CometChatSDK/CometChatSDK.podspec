Pod::Spec.new do |spec|
  spec.name             = 'CometChatSDK'
  spec.version          = '4.0.49'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com'
  spec.authors          = { 'Suryansh Bisen' => 'suryansh.bisen@cometchat.com' }
  spec.summary          = 'CometChat is a platform for integrating voice, video & text messaging experiences into your websites, web apps and mobile apps'
  spec.source          = { :http => 'https://library.cometchat.io/ios/v4.0/xcode15/CometChatSDK_4_0_49.zip'}
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  spec.documentation_url = 'https://www.cometchat.com/docs/ios-chat-sdk/overview'
  spec.vendored_frameworks = 'Vendors/CometChatSDK.xcframework', 'Vendors/CometChatStarscream.xcframework'
  spec.resource_bundles = {'CometChatSDK' => ['Vendors/CometChatSDK.xcframework/PrivacyInfo.xcprivacy']}
  spec.exclude_files    = "Classes/Exclude"
  spec.platform         = :ios, "11.0"
end
