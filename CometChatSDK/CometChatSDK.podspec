Pod::Spec.new do |spec|
  spec.name             = 'CometChatSDK'
  spec.version          = '4.1.7'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com'
  spec.authors          = { 'Suryansh Bisen' => 'suryansh.bisen@cometchat.com' }
  spec.summary          = 'CometChat is a platform for integrating voice, video & text messaging experiences into your websites, web apps and mobile apps'
  spec.source          = { :http => 'https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/4.1.7/CometChatSDK_4_1_7.zip'}
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  spec.documentation_url = 'https://www.cometchat.com/docs/ios-chat-sdk/overview'
  spec.vendored_frameworks = 'Vendors/CometChatSDK.xcframework', 'Vendors/CometChatStarscream.xcframework'
  spec.resource_bundles = {'CometChatSDK' => ['Vendors/CometChatSDK.xcframework/ios-arm64/CometChatSDK.framework/PrivacyInfo.xcprivacy']}
  spec.exclude_files    = "Classes/Exclude"
  spec.platform         = :ios, "12.0"
end
