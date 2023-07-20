// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKMessaging",
    platforms: [
        .iOS(.v11)
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
                 .exact("1.10.0")),
        .package(name: "ZendeskSDKUIComponents",
                 url: "https://github.com/zendesk/sdk_ui_components_ios",
                 from: "2.8.0"),
        .package(name: "ZendeskSDK",
                 url: "https://github.com/zendesk/sdk_zendesk_ios",
                 .exact("1.13.0")),
        .package(name: "ZendeskSDKCoreUtilities",
                 url: "https://github.com/zendesk/sdk_core_utilities_ios",
                 from: "1.4.0")
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
                    .product(name: "ZendeskSDK", package: "ZendeskSDK"),
                    .product(name: "ZendeskSDKCoreUtilities", package: "ZendeskSDKCoreUtilities")
                ],
                path: "Sources")
    ]
)
