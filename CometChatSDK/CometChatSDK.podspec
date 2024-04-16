Pod::Spec.new do |spec|
  spec.name             = 'CometChatSDK'
  spec.version          = '4.0.44'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com'
  spec.authors          = {  'Abhishek Saralaya' => 'abhishek.saralaya@inscripts.in', 'Suryansh Bisen' => 'suryansh.bisen@cometchat.com'}
  spec.summary          = 'CometChat is a platform for integrating voice, video & text messaging experiences into your websites, web apps and mobile apps'
  spec.source          = { :http => 'https://library.cometchat.io/ios/v4/xcode15/CometChatSDK_4_0_44_.zip'}
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  spec.documentation_url = 'https://www.cometchat.com/docs/ios-chat-sdk/overview'
  spec.vendored_frameworks = 'Vendors/CometChatSDK.xcframework', 'Vendors/CometChatStarscream.xcframework'
  spec.exclude_files    = "Classes/Exclude"
  spec.platform         = :ios, "11.0"
end
