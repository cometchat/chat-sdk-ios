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
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatSDK_4_0_50.xcframework.zip",
            checksum: "f03c8c2276ec991438832c6d8aea42541abcd67229c2f42d319ae5792ca62be7"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatStarscream_1_0_1.xcframework.zip",
            checksum: "13a5968a10051dacfbc1fae4be585db59be4ef92e7b7ec33017d95d87a30bdd6"
        )
    ]
)
