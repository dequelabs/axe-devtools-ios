// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "axeDevTools",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "axeDevToolsUIKit",
            targets: ["axeDevToolsUIKit"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        /*.binaryTarget(
            name: "SomeRemoteBinaryPackage",
            url: "https://url/to/some/remote/xcframework.zip",
            checksum: "The checksum of the ZIP archive that contains the XCFramework."
        ),*/
        .binaryTarget(
            name: "axeDevToolsUIKit",
            path: "axeDevToolsUIKit.xcframework"
        )
    ]
)
