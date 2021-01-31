// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Peacock",
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(name: "Peacock", dependencies: []),
        .testTarget(name: "PeacockTests", dependencies: ["Peacock"]),
    ]
)
