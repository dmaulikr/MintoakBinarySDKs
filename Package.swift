// swift-tools-version: 5.9
import PackageDescription

let tag = "1.0.0"                // <-- change if necessary
let base = "https://raw.githubusercontent.com/dmaulikr/MintoakBinarySDKs/main/Binaries"

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
            name: "AIMSalesSDK",
            targets: ["AIMSalesSDK",
                     "Appearance",
                     "CalendarFilter",
                     "Localizable",
                     "FilterSDK",
                     "NetWorker",
                      "DataReloadableVC",
                      "BizViewFilter"
                     ]),
        .library(
            name: "PaymentModesSDK",
            targets: ["PaymentModesSDK",
                     "Appearance",
                     "CalendarFilter",
                     "Localizable",
                     "FilterSDK",
                     "NetWorker",
                      "DataReloadableVC",
                      "BizViewFilter"]),
        .library(
            name: "TransactionSDK",
            targets: ["TransactionSDK",
                     "Appearance",
                     "CalendarFilter",
                     "Localizable",
                     "FilterSDK",
                     "NetWorker",
                      "DataReloadableVC",
                      "BizViewFilter",
                     "PayLaterCustomerListSDK"])
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
            checksum: "9d0adb7e093dba5bbdd3bfea150c50a9dceaf114981a236bb7fd4b227178b77e"
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
        ),
        .binaryTarget(
            name: "DataReloadableVC",
            url: "\(base)/DataReloadableVC.xcframework.zip",
            checksum: "822ec0537985f0bf05cd170ed6530347eb6ab48742a22260fbf1caa8975326b1"
        ),
        .binaryTarget(
            name: "PayLaterCustomerListSDK",
            url: "\(base)/PayLaterCustomerListSDK.xcframework.zip",
            checksum: "de30317ceba3e5ef26fea555ec05befa065699fb9557f3911b3af49b3bb9389e"
        ),
        .binaryTarget(
            name: "PaymentModesSDK",
            url: "\(base)/PaymentModesSDK.xcframework.zip",
            checksum: "96ea134ee380170913d9861a35ffced21b90a761e322f7845e5e5642b503e495"
        ),
        .binaryTarget(
            name: "Public",
            url: "\(base)/Public.xcframework.zip",
            checksum: "9d7c324f7124ab7f20effadcb2f7feba291cde5b0d584ce98766a45e6bc31282"
        ),
        .binaryTarget(
            name: "TransactionSDK",
            url: "\(base)/TransactionSDK.xcframework.zip",
            checksum: "59cbb5ceaedcf3dc077c3d4e382a6cfb930b25a1e27b628d182b5c666fa7adcb"
        ),
        .binaryTarget(
            name: "AIMSalesSDK",
            url: "\(base)/AIMSalesSDK.xcframework.zip",
            checksum: "07a825b4341fe628951457983709770ff9a69c1e690ff9a64e3192bc9ffd5278"
        ),
        .binaryTarget(
            name: "BizViewFilter",
            url: "\(base)/BizViewFilter.xcframework.zip",
            checksum: "8e0e972d7ce83c046892a91e5da438e55b2ecb9786865e45ad0aff40648dd63b"
        )
    ]
)
