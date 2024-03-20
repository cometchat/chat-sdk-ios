// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CometChatSDK",
    platforms: [
        // Only add support for iOS 11 and up.
        .iOS(.v11)
    ],
    products: [
        .library(name: "CometChatSDK", targets: ["CometChatSDK","CometChatStarscream"])
    ],
    targets: [
        .binaryTarget(
            name: "CometChatSDK",
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatSDK_4_0_43.xcframework.zip",
            checksum: "f236ac1f1cb6588c73b59766dec4a1391290d27d0b6d87f87f4b1c6a1efefd15"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode14/CometChatStarscream_1_0_0.xcframework.zip",
            checksum: "857572e419deab4a0bfccf760618c39b0f76f6368a071f3aae432a8ec414675a"
        )
    ]
)
