// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.0.18"
let moduleName = "Citiwastelib"
let checksum = "1c7d79952bf3b6d14fe458ba5e4bc7366c991ff4737c14d8094093c68cdc042a"

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
