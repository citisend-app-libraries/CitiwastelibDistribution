// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.0.33"
let moduleName = "Citiwastelib"
let checksum = "29784d8f6692cf51362ffdf3c1a76ff3c45ff814ad132160c79cd364220df3fa"

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
