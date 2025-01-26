// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorApplicationContext",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorApplicationContext",
            targets: ["ApplicationContextPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
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