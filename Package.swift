// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKMessaging",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "ZendeskSDKMessaging",
            targets: [
                "ZendeskSDKMessagingTargets"
            ]
        )
    ],
    dependencies: [
        .package(name: "ZendeskSDKConversationKit",
                 url: "https://github.com/zendesk/sdk_conversation_kit_ios",
                 from: "0.7.0"),
        .package(name: "ZendeskSDKUIComponents",
                 url: "https://github.com/zendesk/sdk_ui_components_ios",
                 from: "0.7.0"),
        .package(name: "ZendeskSDK",
                 url: "https://github.com/zendesk/sdk_zendesk_ios",
                 from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKMessaging",
            path: "ZendeskSDKMessaging.xcframework"
        ),
        .target(name: "ZendeskSDKMessagingTargets",
                dependencies: [
                    .target(name: "ZendeskSDKMessaging"),
                    .product(name: "ZendeskSDKConversationKit", package: "ZendeskSDKConversationKit"),
                    .product(name: "ZendeskSDKUIComponents", package: "ZendeskSDKUIComponents"),
                    .product(name: "ZendeskSDK", package: "ZendeskSDK")
                ],
                path: "Sources")
    ]
)
