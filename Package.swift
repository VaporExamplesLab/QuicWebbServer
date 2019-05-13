// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "QuicWebbServer",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        
        // Stencil (like django)
        .package(url: "https://github.com/stencilproject/Stencil.git", from: "0.13.1"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Stencil", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ],
    swiftLanguageVersions: [.v4_2]
)

