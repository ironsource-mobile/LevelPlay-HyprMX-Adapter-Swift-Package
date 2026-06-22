// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-HyprMX-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "HyprMXAdapter", targets: ["HyprMXAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/JunGroupProductions/HyprMX-SDK-SPM", exact: "6.4.6"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/hyprmx-adapter/5.4.0/ISHyprMXAdapter5.4.0.zip",
      checksum: "fe4adf312237f61926afb7d0796f2c173642673794e178f389a53beaeb937356"
    )
  ]
)
