<div style="width:100%">
    <div style="width:50%; display:inline-block">
        <p align="center">
        <img align="center" width="180" height="180" alt="" src="https://github.com/cometchat-pro/ios-swift-chat-app/blob/master/Screenshots/CometChat%20Logo.png">    
        </p>    
    </div>    
</div>

CometChat Pro enables you to add voice, video & text chat for your website & app.

[![Platform](https://img.shields.io/badge/platform-iOS-orange.svg)](https://cocoapods.org/pods/CometChatPro)
[![Languages](https://img.shields.io/badge/language-Objective--C%20%7C%20Swift-orange.svg)](https://github.com/cometchat-pro/ios-chat-sdk)[![CocoaPods](https://img.shields.io/badge/pod-v1.8.12-green.svg)](https://cocoapods.org/pods/CometChatPro)



# User Guide

## v2 Apps

To use our SDK with v2 Apps, you can checkout to branch v2 and install the SDK as specified in readme.md instructions. 


## v1 Apps

### Documentation:

Before you begin, we strongly recommend you read the <a href="https://prodocs.cometchat.com/docs/concepts" target="_blank">Key Concepts</a> guide.

### Get your Application Keys

<a href="https://app.cometchat.io" target="_blank">Signup for CometChat</a> and then:

1. Create a new app: Enter a name & select version legacy then hit the **+** button
2. Head over to the **API Keys** section and click on the **Create API Key** button
3. Enter a name and select the scope as **Auth Only**
4. Now note the **API Key** and **App ID** 

### Installation:

- For Xcode 11.2.1 (Latest):

```
platform :ios, '10.0'
use_frameworks!

target 'MyApp' do
  pod 'CometChatPro', '~> 1.8.12'
end 
```

- For Xcode 11 (Older):

```
platform :ios, '10.0'
use_frameworks!

target 'MyApp' do
  pod 'CometChatPro', '~> 1.8.12-Xcode11'
end 
```

### Note: 

CometChatPro SDK supports installation through Cocoapods only and it will support upto two latest releases of Xcode. Currently we are supporting Xcode 11.2.1 and Xcode 11.
