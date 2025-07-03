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
            url: "https://library.cometchat.io/ios/v4.0/xcode16/CometChatSDK_4_0_62.xcframework.zip",
            checksum: "67d3abffeb0bb5f9b3d4a4b4a81b71ef17565428efb8aea92617e9049c2f3dfd"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatStarscream_1_0_2.xcframework.zip",
            checksum: "a0ed2ce9269afb7122130ce3a168f3b92c030480219c6fadd68d01268bc57622"
        )
    ]
)
