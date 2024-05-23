
Pod::Spec.new do |spec|
  spec.name             = 'CometChatPro'
  spec.version          = '3.0.921'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com/chat-sdks-api'
  spec.authors          = { 'Suryansh Bisen' => 'suryansh.bisen@cometchat.com' }
  spec.summary          = 'CometChat is a platform for integrating voice, video & text messaging experiences into your websites, web apps and mobile apps'
  spec.source          = { :http => 'https://library.cometchat.io/ios/v3.0/xcode15/CometChatPro_3_0_921.zip'}
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  spec.documentation_url = 'https://www.cometchat.com/docs/ios-chat-sdk/overview'
  spec.vendored_frameworks = 'Vendors/CometChatPro.xcframework', 'Vendors/CometChatStarscream.xcframework'
  spec.exclude_files    = "Classes/Exclude"
  spec.resource_bundles = {'CometChatPro' => ['Vendors/CometChatPro.xcframework/PrivacyInfo.xcprivacy']}
  spec.platform         = :ios, "11.0"
end
