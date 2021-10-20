// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Armchair",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Armchair",
            targets: ["Armchair"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Armchair",
            path: "Source",
            exclude: ["Info.plist", "Info-Localizable.plist"],
            resources: [.process("../Localization")]),
        .testTarget(
            name: "ArmchairTests",
            dependencies: ["Armchair"],
            path: "Tests",
            exclude: ["Info.plist"]),
    ]
)
