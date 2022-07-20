// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CometChatPro",
    platforms: [
        // Only add support for iOS 11 and up.
        .iOS(.v11)
    ],
    products: [
        .library(name: "CometChatPro", targets: ["CometChatPro","CometChatStarscream"])
    ],
    targets: [
        .binaryTarget(
            name: "CometChatPro",
            path: "./Sources/CometChatPro.xcframework"),
        .binaryTarget(
            name: "CometChatStarscream",
            path: "./Sources/CometChatStarscream.xcframework")
    ]
)
