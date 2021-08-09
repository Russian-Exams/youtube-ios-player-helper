// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YoutubePlayerHelper",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "YoutubePlayerHelper",
            targets: ["YoutubePlayerHelper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "YoutubePlayerHelper",
            dependencies: [],
            resources: [
                .copy("YTPlayerView-iframe-player.html")
            ],
            publicHeadersPath: "."),
        .testTarget(
            name: "YoutubePlayerHelperTests",
            dependencies: ["YoutubePlayerHelper"]),
    ]
)
