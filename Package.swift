// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "youtube-ios-player-helper",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "youtube-ios-player-helper",
            targets: ["youtube-ios-player-helper"]),
        .library(
            name: "YoutubeSwiftUI",
            targets: ["YoutubeSwiftUI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "youtube-ios-player-helper",
            dependencies: [],
            resources: [
                .copy("YTPlayerView-iframe-player.html")
            ]),
        
        .target(
            name: "YoutubeSwiftUI",
            dependencies: ["youtube-ios-player-helper"]),
        
        .testTarget(
            name: "youtube-ios-player-helperTests",
            dependencies: ["youtube-ios-player-helper"]),
    ]
)
