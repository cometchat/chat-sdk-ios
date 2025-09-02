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
            url: "https://library.cometchat.io/ios/v4.0/xcode16/CometChatSDK_4_0_67.xcframework.zip",
            checksum: "23dcf9e3f2c753711219872c10b0c49d6ef0b4075bed0466ea636afdfe7a2d91"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatStarscream_1_0_2.xcframework.zip",
            checksum: "94fef289d5b952bb06465e7631be83b40594072931a580a9e8ba86258b9f0ec5"
        )
    ]
)
