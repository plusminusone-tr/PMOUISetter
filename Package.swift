// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PMOUISetter",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "PMOUISetter", 
            targets: ["PMOUISetter"])
    ],
    targets: [
        .binaryTarget(
            name: "PMOUISetter", 
            path: "PMOUISetter.xcframework")
    ])
