// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.0.19"
let moduleName = "Citiwastelib"
let checksum = "84fefe657f5a223e13be271f345c648da16bfcef24c4493fa06d419d2e73854a"

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
