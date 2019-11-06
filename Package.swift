// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ios-chat-sdk",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ios-chat-sdk",
            targets: ["ios-chat-sdk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/cometchat-pro/ios-chat-sdk.git", from: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ios-chat-sdk",
            dependencies: []),
        .testTarget(
            name: "ios-chat-sdkTests",
            dependencies: ["ios-chat-sdk"]),
    ]
)
