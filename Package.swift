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
            url: "https://library.cometchat.io/ios/v4.0/xcode14/CometChatSDK_4_0_0-beta4.xcframework.zip",
            checksum: "08d9ab5b95dc0d722270903084c85797c4b27a47d12a2c6355f69684595e5e9a"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode14/CometChatStarscream_1_0_0.xcframework.zip",
            checksum: "857572e419deab4a0bfccf760618c39b0f76f6368a071f3aae432a8ec414675a"
        )
    ]
)
