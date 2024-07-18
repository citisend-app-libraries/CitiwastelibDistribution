// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.0.1"
let moduleName = "Citiwastelib"
let checksum = "f09402cb64a6f5cbaf681d69bbe97cee3e01049bc7141f2955762b7b40b78d4d"

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
