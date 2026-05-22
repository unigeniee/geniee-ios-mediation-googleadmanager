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
            url: "https://github.com/unigeniee/geniee-ios-mediation-googleadmanager/releases/download/8.3.1/GenieeMediationGoogleAdManager.8.3.1.zip",
            checksum: "05aec28d547c675021a150837094ac18de846ce15897d63ad498572c14524929"
        )
    ]
)
