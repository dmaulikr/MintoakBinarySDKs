// swift-tools-version: 5.9
import PackageDescription

let tag = "1.0.0"                // <-- change if necessary
let base = "https://github.com/dmaulikr/MintoakBinarySDKs/blob/main/Binaries"

let package = Package(
    name: "MintoakBinarySDKs",
    platforms: [.iOS(.v13)],
    products: [
        // Publicly consumable SDKs
        .library(
            name: "UamSDK",
            targets: ["UamSDK",
                      "NetWorker",
                      "FilterSDK",
                      "CryptoSwift",
                      "CalendarFilter",
                      "Localizable",
                      "Appearance"]),       // transitively needed
        .library(
            name: "Appearance",
            targets: ["Appearance"])
    ],
    targets: [
        // ---- Binary Targets ------------------------------------------------
        .binaryTarget(
            name: "UamSDK",
            url: "\(base)/UamSDK.xcframework.zip",
            checksum: "d1c2e8896cce9422641d510b898c3ecf5eec8be4612d53ca60d38599911a52d5"
        ),
        .binaryTarget(
            name: "Appearance",
            url: "\(base)/Appearance.xcframework.zip",
            checksum: "70250b9e787b33dad25cb2084547ba4ecf208e6538efdc0a0afc3eb422295e6d"
        ),
        .binaryTarget(
            name: "NetWorker",
            url: "\(base)/NetWorker.xcframework.zip",
            checksum: "32b6c69fc649ca08630450364f520e73a53767bd4acad34db46e3523cd696a15"
        ),
        .binaryTarget(
            name: "FilterSDK",
            url: "\(base)/FilterSDK.xcframework.zip",
            checksum: "262b286c2ec04e720ec930184ab78619d6b13701fc5c38af77d7950fb4404289"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(base)/CryptoSwift.xcframework.zip",
            checksum: "b745bbe52f6e569b2d838552ce6136de1a52194bcdcf2547489ee63ca8b44d0a"
        ),
        .binaryTarget(
            name: "CalendarFilter",
            url: "\(base)/CalendarFilter.xcframework.zip",
            checksum: "8cd22e17f82f67eab62d102e035a1c2cf99874e9d639433e56a7100759c7fc44"
        ),
        .binaryTarget(
            name: "Localizable",
            url: "\(base)/Localizable.xcframework.zip",
            checksum: "8dcb0dfa90d8f275a611ed8775ca324ff302f62263c5646d4513e832787b33b4"
        )
    ]
)
