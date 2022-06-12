// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AlamofireXMLRPC",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14)
    ],
    products: [
        .library(
            name: "AlamofireXMLRPC",
            targets: ["AlamofireXMLRPC"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire",.upToNextMajor(from: "5.6.1")),
        .package(url: "https://github.com/tadija/AEXML.git", .upToNextMajor(from: "4.6.1"))
    ],
    targets: [
        .target(
            name: "AlamofireXMLRPC",
            dependencies: [
                "Alamofire",
                "AEXML"
            ],
            exclude: [
                "Info.plist"
            ]
        )
    ]
)
