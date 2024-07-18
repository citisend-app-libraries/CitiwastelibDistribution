// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.0.19"
let moduleName = "Citiwastelib"
let checksum = "18211fcea364a418f0d732d9f6dc0430ee636ea3ed8582599d9f120b37310027"

let package = Package(
    name: moduleName,
    platforms: [
       .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
       .library(
           name: moduleName,
           targets: [moduleName]
       )
    ],
    targets: [
           .binaryTarget(
               name: moduleName,
               url: "https://github.com/citisend-app-libraries/CitiwastelibDistribution/releases/download/\(version)/\(moduleName).xcframework.zip",
               checksum: checksum
           )
       ]
)
