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
            checksum: "eaaf3ac5ec15981950b606664212236c24bf4b92dfc809d431375f68a4ec7bcf"
        ),
        .binaryTarget(
            name: "Appearance",
            url: "\(base)/Appearance.xcframework.zip",
            checksum: "d63f480ec4aa20e06d7456762f7767c7ae1e77dd7564e2e93fb90921d9284065"
        ),
        .binaryTarget(
            name: "NetWorker",
            url: "\(base)/NetWorker.xcframework.zip",
            checksum: "70041ef472eb346a8415947a26e0c774766bbbdacff174a38f20978201b5b8bd"
        ),
        .binaryTarget(
            name: "FilterSDK",
            url: "\(base)/FilterSDK.xcframework.zip",
            checksum: "f1302fee164e6dbb1b970bcc6fdf164af0288bf3c2197da35fd79735f7756793"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(base)/CryptoSwift.xcframework.zip",
            checksum: "9d0adb7e093dba5bbdd3bfea150c50a9dceaf114981a236bb7fd4b227178b77e"
        ),
        .binaryTarget(
            name: "CalendarFilter",
            url: "\(base)/CalendarFilter.xcframework.zip",
            checksum: "fb49618e9f50990ba975b7510403012f2332c50d27437da965e31183e50d7b72"
        ),
        .binaryTarget(
            name: "Localizable",
            url: "\(base)/Localizable.xcframework.zip",
            checksum: "f2453b074aca0204aebd5004a1f67873ebfe6e24dc08e82cf11a960869cbdc83"
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
