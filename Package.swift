// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GeoQSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GeoQSDK",
            targets: ["GeoQSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                    name: "GeoQSDK",
                    url: "https://github.com/Cristaliza/GeoQSDK/releases/download/2.0.5/GeoQSDK.xcframework.zip",
                    checksum: "083f31b410baf4cc7a9d64061310ce727507f98a7a1600165d92415ac2070aee"),

    ]
)
