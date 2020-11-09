// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "myProject",
    platforms: [
       .macOS(.v11)
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor", from: "4.34.0"),
        .package(url: "https://github.com/vapor/leaf", .exact("4.0.0-tau.1")),
        .package(url: "https://github.com/vapor/leaf-kit", .exact("1.0.0-tau.1.1")),
        .package(url: "https://github.com/vapor/fluent", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent-sqlite-driver", from: "4.0.0"),
        .package(url: "https://github.com/binarybirds/liquid", from: "1.1.0"),
        .package(url: "https://github.com/binarybirds/liquid-local-driver", from: "1.1.0"),
        .package(url: "https://github.com/lukaskubanek/LoremSwiftum", from: "2.2.1"),
        .package(name: "MyProjectApi", path: "../MyProjectApi"),
        .package(url: "https://github.com/binarybirds/spec", from: "1.1.0"),
        .package(url: "https://github.com/binarybirds/content-api", from: "1.0.0"),
        .package(url: "https://github.com/binarybirds/view-kit", from: "1.2.0-rc"),
        .package(url: "https://github.com/binarybirds/leaf-foundation", from: "1.0.0-beta"),
        .package(url: "https://github.com/binarybirds/viper-kit", from: "1.4.0-beta"),
    ],
    targets: [
        .target(name: "App", dependencies: [
            .product(name: "Leaf", package: "leaf"),
            .product(name: "Fluent", package: "fluent"),
            .product(name: "FluentSQLiteDriver", package: "fluent-sqlite-driver"),
            .product(name: "Liquid", package: "liquid"),
            .product(name: "LiquidLocalDriver", package: "liquid-local-driver"),
            .product(name: "LoremSwiftum", package: "LoremSwiftum"),
            .product(name: "MyProjectApi", package: "MyProjectApi"),
            .product(name: "ContentApi", package: "content-api"),
            .product(name: "ViewKit", package: "view-kit"),
            .product(name: "LeafFoundation", package: "leaf-foundation"),
            .product(name: "ViperKit", package: "viper-kit"),
            .product(name: "Vapor", package: "vapor"),
        ],
        exclude: [
            "Modules/Blog/Views",
            "Modules/Frontend/Views",
            "Modules/User/Views",
            "Modules/Admin/Views",
        ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: [
            .target(name: "App"),
            .product(name: "Spec", package: "spec"),
            .product(name: "XCTVapor", package: "vapor"),
            .product(name: "XCTLeafKit", package: "leaf-kit"),
        ])
    ]
)
