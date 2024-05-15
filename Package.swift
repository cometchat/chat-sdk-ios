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
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatSDK_4_0_46.xcframework.zip",
            checksum: "10c6e62d5e5380eead9f235a5d15eef41f4813168c5ed79f03203b9795de2478"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode14/CometChatStarscream_1_0_0.xcframework.zip",
            checksum: "857572e419deab4a0bfccf760618c39b0f76f6368a071f3aae432a8ec414675a"
        )
    ]
)
