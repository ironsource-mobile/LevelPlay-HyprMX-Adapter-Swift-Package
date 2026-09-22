// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-HyprMX-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "HyprMXAdapter", targets: ["HyprMXAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/JunGroupProductions/HyprMX-SDK-SPM", exact: "6.4.7"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "HyprMXAdapter",
      dependencies: [
        "HyprMXAdapterSDK",
        .product(name: "HyprMX", package: "HyprMX-SDK-SPM"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "HyprMXAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/hyprmx-adapter/5.5.0/ISHyprMXAdapter5.5.0.zip",
      checksum: "5dd46f51366cd38f86ace8f070e018092e8d35b5018b0d1d1cf8882d15dcd9ed"
    )
  ]
)
