// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let package = Package(
//    name: "CometChatSwiftPackage",
//    platforms: [
//            .macOS(.v10_14), .iOS(.v13)
//        ],
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "CometChatPro",
//            targets: ["CometChatPro"]),
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//                // Here we define our package's external dependencies
//                // and from where they can be fetched:
//        .package(
//            url: "https://github.com/abhisheksaralaya/CCCometChatPro.git",
//            .exact("1.0.0")
//        )
//    ],
//    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(name: "CometChatPro",
//                dependencies: [])
//        .binaryTarget(name: "CometChatPro", path: "./Sources/CometChatPro.xcframework"),
//        .binaryTarget(name: "Starscream", path: "./Sources/Starscream.xcframework")
//        .binaryTarget(
//            name: "CometChatPro",
//            url: "https://library.cometchat.io/ios/v2.0/xcode12/CometChatPro.xcframework_3.zip",
//            checksum: "7e3ea69f82721c844c261794b58ab8f1839392d38671c673202192bc35a6a307"
////            0169d1cebbb98f5170016d4034f5b85f656f3efc7779ea476f6caa103398304d"
//
//        ),
//        .binaryTarget(name: "Starscream",
//                      url: "https://library.cometchat.io/ios/v2.0/xcode12/Starscream.xcframework_2.zip",
//                      checksum: "b0e9a80270f0e03d824e168620f0bd4c4f2aebd9050aa5c3ff724ceb86b950ba")
//   ]
//)
//
//let package = Package(
//    name: "CometChatPro",
//    platforms: [
//        .iOS(.v11),
//    ],
//    products: [
//        .library(
//            name: "CometChatPro",
//            targets: ["CometChatPro"]
//        ),
//    ],
//    dependencies: [],
//    targets: [
//        .binaryTarget(
//            name: "CometChatPro",
//            url: "https://github.com/abhisheksaralaya/CCCometChatPro/blob/master/CometChatPro.xcframework.zip",
//            checksum: "aa7eac669c72c18e19f706339062eeeead036f082a7a4fb862c275b7869b70b1"
//        ),
//    ]
//)

let package = Package(
    name: "CometChatPro",
    platforms: [
        // Only add support for iOS 11 and up.
        .iOS(.v11)
    ],
    products: [
        .library(name: "CometChatPro", targets: ["CometChatPro","Starscream"])
    ],
    targets: [
        .binaryTarget(
            name: "CometChatPro",
            path: "./Sources/CometChatPro.xcframework"),
        .binaryTarget(
            name: "Starscream",
            path: "./Sources/Starscream.xcframework")
    ]
)
