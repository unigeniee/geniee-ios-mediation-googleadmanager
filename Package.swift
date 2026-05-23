// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationGoogleAdManager",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationGoogleAdManager",
            targets: ["GenieeMediationGoogleAdManagerTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "12.0.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationGoogleAdManagerTarget",
            dependencies: [
                "GenieeMediationGoogleAdManager",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/GenieeMediationGoogleAdManagerTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationGoogleAdManager",
            url: "https://github.com/unigeniee/geniee-ios-mediation-googleadmanager/releases/download/8.3.100/GenieeMediationGoogleAdManager.8.3.1.0.zip",
            checksum: "caac7092c9938ecec97554e43a2af5bd06d1955947f5aa1fd8f95f6f31137ee9"
        )
    ]
)
