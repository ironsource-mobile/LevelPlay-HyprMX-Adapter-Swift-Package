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
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "HyprMXAdapter",
      dependencies: [
        "HyprMXAdapterSDK",
        .product(name: "HyprMX", package: "HyprMX-SDK-SPM"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "HyprMXAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/hyprmx-adapter/5.3.0/ISHyprMXAdapter5.3.0.zip",
      checksum: "927a7eb0fafed90be9a4d91f3736c9059e0d8bfb8bf6fa805a6369c99e1ccfbc"
    )
  ]
)
