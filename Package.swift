// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "FFmpeg", platforms: [.iOS(.v13)], products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "FFmpeg", targets: ["FFmpeg"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "FFmpeg",
                      url: "https://github.com/swp-song/FFmpeg/releases/download/1.0.0/FFmpeg.xcframework.zip",
                      checksum: "47700ddddc97a54c019e734c9f3eba22ddad16ac3ce9b1812c7d56b40864876f"),
    ]
)
