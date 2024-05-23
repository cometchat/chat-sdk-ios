<p align="center">
  <img alt="CometChat" src="https://assets.cometchat.io/website/images/logos/banner.png">
</p>


# CometChat iOS Chat SDK

CometChat enables you to add voice, video & text chat for your website & app.
___

## Prerequisites :star:

Before you begin, ensure you have met the following requirements:

✅ &nbsp; You have installed the latest version of Xcode. (Above Xcode 12 Recommended)

✅ &nbsp; iOS Chat SDK works for iOS devices from iOS 11 and above.

___

## Installing iOS Chat SDK 

## 1. Setup  :wrench:

To install iOS Chat SDK, you  need to first register on CometChat Dashboard. [Click here to sign up](https://app.cometchat.com/login).

### i. Get your Application Keys :key:

* Create a new app
* Head over to the Quick Start or API & Auth Keys section and note the `App ID`, `Auth Key`,  and  `Region`.
---

### ii. Add the CometChatSDK Dependency


We recommend using CocoaPods, as they are the most advanced way of managing iOS project dependencies. Open a terminal window, move to your project directory, and then create a Podfile by running the following command


Create podfile using below command.

```bash
$ pod init
```
Add the following lines to the Podfile.

```bash
________________________________________________________________

For Xcode 12 and above:

platform :ios, '11.0'
use_frameworks!

target 'YourApp' do
     pod 'CometChatSDK', '4.0.47'
     pod 'CometChatCallsSDK', '4.0.6'
end
________________________________________________________________


```
And then install the `CometChatSDK` framework through CocoaPods.

```bash
pod install
```

If you're facing any issues while installing pods then use the below command. 


```bash
pod install --repo-update
```

___

## 2. Configure CometChat inside your app

### i. Initialize CometChat :star2:

The `init()` method initializes the settings required for CometChat. We suggest calling the `init()` method on app startup, preferably in the `didFinishLaunchingWithOptions()` method of the Application class.

```swift
import CometChatSDK

class AppDelegate: UIResponder, UIApplicationDelegate{

   var window: UIWindow?
   let appId: String = "ENTER APP ID"
   let region: String = "ENTER REGION CODE"
    
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

  let mySettings = AppSettings.AppSettingsBuilder().subscribePresenceForAllUsers().setRegion(region: region).build()
  CometChat(appId: appId ,appSettings: mySettings,onSuccess: { (isSuccess) in
  
                print("CometChat SDK intialise successfully.")

        }) { (error) in
            print("CometChat SDK failed intialise with error: \(error.errorDescription)")
        }
        return true
    }
}
```
**Note :**
Make sure you replace the APP_ID with your CometChat `appId` and `region` with your app region in the above code.

___

### ii. Create User :bust_in_silhouette:

Once initialization is successful, you will need to create a user. To create the users on the fly, you can use the `createUser()` method. This method takes a `User` object and the `Auth Key` as input parameters and returns the created User object if the request is successful.

```swift

let newUser : User = User(uid: "user1", name: "Kevin") // Replace with your uid and the name for the user to be created.
let authKey = "authKey" // Replace with your Auth Key.
CometChat.createUser(user: newUser, apiKey: authKey, onSuccess: { (User) in
      print("User created successfully. \(User.stringValue())")
  }) { (error) in
     print("The error is \(String(describing: error?.description))")
}

```
___

### iii. Log in your User :bust_in_silhouette:

The `login()` method returns the User object containing all the information of the logged-in user.

```swift
let uid    = "SUPERHERO1"
let authKey = "ENTER AUTH KEY"

CometChat.login(UID: uid, apiKey: authKey, onSuccess: { (user) in

  print("Login successful: " + user.stringValue())

}) { (error) in

  print("Login failed with error: " + error.errorDescription);

}
```

**Note :** </br>
* Make sure you replace the `authKey` with your CometChat Auth Key in the above code.

* We have set up 5 users for testing having UIDs: `SUPERHERO1`, `SUPERHERO2`, `SUPERHERO3`, `SUPERHERO4`, and `SUPERHERO5`.

---

# Checkout our sample apps

## Swift: 
Visit our [Swift sample app](https://github.com/cometchat/cometchat-sample-app-ios) repo to run the Swift sample app.

---


## Help and Support
For issues running the project or integrating with our UI Kits, consult our [documentation](https://www.cometchat.com/docs/react-uikit/integration) or create a [support ticket](https://help.cometchat.com/hc/en-us) or seek real-time support via the [CometChat Dashboard](https://app.cometchat.com/).


