// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RxRealm",
    products: [
        .library(name: "RxRealm", targets: ["RxRealm"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/realm/realm-cocoa", .branch("master"))
    ],
    targets: [
        .target(
            name: "RxRealm",
            dependencies: [
                "RxSwift",
                "RxCocoa",
                "Realm",
                "RealmSwift"
            ],
            path: "Pod/Classes")
    ]
)
