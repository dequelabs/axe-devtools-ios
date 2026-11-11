// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "axeDevTools",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "axeDevToolsXCUI",
            targets: ["axeDevToolsXCUI"])
    ],
    targets: [
        .binaryTarget(
            name: "axeDevToolsXCUI",
            path: "axeDevToolsXCUI.xcframework"
        )
    ]
)
