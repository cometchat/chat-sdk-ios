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
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatSDK_4_0_43-beta1.xcframework.zip",
            checksum: "37840f6dea75e5afdf35b0c54d18556272d3b0c522b2a1004b0897d86bf54008"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode14/CometChatStarscream_1_0_0.xcframework.zip",
            checksum: "857572e419deab4a0bfccf760618c39b0f76f6368a071f3aae432a8ec414675a"
        )
    ]
)
