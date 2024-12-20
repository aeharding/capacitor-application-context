// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorApplicationContext",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorApplicationContext",
            targets: ["ApplicationContextPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "6.0.0")
    ],
    targets: [
        .target(
            name: "ApplicationContextPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ApplicationContextPlugin"),
        .testTarget(
            name: "ApplicationContextPluginTests",
            dependencies: ["ApplicationContextPlugin"],
            path: "ios/Tests/ApplicationContextPluginTests")
    ]
)