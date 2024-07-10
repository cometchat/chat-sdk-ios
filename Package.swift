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
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatSDK_4_0_51.xcframework.zip",
            checksum: "764c37433f8befaedd36befeef787fb07e01a705b2f903535904b6effe7e531a"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatStarscream_1_0_1.xcframework.zip",
            checksum: "13a5968a10051dacfbc1fae4be585db59be4ef92e7b7ec33017d95d87a30bdd6"
        )
    ]
)
