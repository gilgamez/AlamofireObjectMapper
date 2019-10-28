// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
        // specify each minimum deployment requirement,
        //otherwise the platform default minimum is used.
        .macOS(.v10_13),
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", from: "3.5.1"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0-rc.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "AlamofireObjectMapper",
            dependencies: ["ObjectMapper", "Alamofire"] 
        ),
        .testTarget(
            name: "AlamofireObjectMapperTests",
            dependencies: ["AlamofireObjectMapper"]
        ),
    ]
)
