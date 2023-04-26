// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "axeDevTools",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "axeDevToolsUIKit",
            targets: ["axeDevToolsUIKit"]),
        .library(
            name: "axeDevToolsXCUI",
            targets: ["axeDevToolsXCUI"])
    ],
    targets: [
        .binaryTarget(
            name: "axeDevToolsUIKit",
            url: "https://github.com/dequelabs/axe-devtools-ios/archive/refs/tags/3.4.0-UIKit.zip",
            checksum: "809ab990927a9d223b4aba122675a56d52ef07e63e3ae99ccb50eebbd7896f22"
        ),
        .binaryTarget(
            name: "axeDevToolsXCUI",
            path: "axeDevToolsXCUI.xcframework"
        )
    ]
)
