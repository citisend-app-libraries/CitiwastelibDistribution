// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

<<<<<<< HEAD
let version = "0.0.3"
let moduleName = "Citiwastelib"
let checksum = "b567383eea1e35c0fec2f1916981ef1557017da65f096537e8af90af0da54f78"
=======
let version = "0.0.10"
let moduleName = "Citiwastelibs"
let checksum = "5dc7abe3ad4d3ffefae3c9dc87ca38a2adc7f65b604f929b5761b7c7b206465b"
>>>>>>> e8709ce5ccd618455479a96d1f8fb5c8b1eed09a

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
               url: "https://github.com/albetoetecnia/CitiwastelibsDistribution/releases/download/\(version)/\(moduleName).xcframework.zip",
               checksum: checksum
           )
       ]
)
