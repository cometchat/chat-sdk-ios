// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CometChatSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "CometChatSDK", targets: ["CometChatSDK","CometChatStarscream"])
    ],
    targets: [
        .binaryTarget(
            name: "CometChatSDK",
            url: "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/4.1.8/CometChatSDK_4_1_8.xcframework.zip",
            checksum: "3c6b6a86a4b0f02dc661179264bb8298e2955033dcc2dfdba44ce37ce64f7c6b"
        ),
        .binaryTarget(
            name: "CometChatStarscream",
            url: "https://library.cometchat.io/ios/v4.0/xcode15/CometChatStarscream_1_0_2.xcframework.zip",
            checksum: "94fef289d5b952bb06465e7631be83b40594072931a580a9e8ba86258b9f0ec5"
        )
    ]
)
