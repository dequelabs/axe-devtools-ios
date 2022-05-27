// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "axeDevTools",
    platforms: [
        .iOS(.v10)
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
            path: "axeDevToolsUIKit.xcframework"
        ),
        .binaryTarget(
            name: "axeDevToolsXCUI",
            path: "axeDevToolsXCUI.xcframework"
        )
    ]
)
