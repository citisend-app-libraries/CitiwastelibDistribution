// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

<<<<<<< HEAD
let version = "0.0.10"
let moduleName = "Citiwastelib"
let checksum = "d917eda4fd76e80f29cd4a86ae773c297bb9b443c2af1fdbb0e8385ac7fe4241"
=======
let version = "0.0.10"
let moduleName = "Citiwastelib"
let checksum = "d917eda4fd76e80f29cd4a86ae773c297bb9b443c2af1fdbb0e8385ac7fe4241"
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
