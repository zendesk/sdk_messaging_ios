// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKMessaging",
    platforms: [
        .iOS(.v12)
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
        .package(
            name: "ZendeskSDKConversationKit",
            url: "https://github.com/zendesk/sdk_conversation_kit_ios",
            from: "13.1.1"
        ),
        .package(
            name: "ZendeskSDKUIComponents",
            url: "https://github.com/zendesk/sdk_ui_components_ios",
            from: "14.1.0"
        ),
        .package(
            name: "ZendeskSDK",
            url: "https://github.com/zendesk/sdk_zendesk_ios",
            from: "3.14.1"
        ),
        .package(
            name: "ZendeskSDKCoreUtilities",
            url: "https://github.com/zendesk/sdk_core_utilities_ios",
            from: "7.2.0"
        ),
        .package(
            name: "ZendeskSDKGuideKit",
            url: "https://github.com/zendesk/sdk_guide_kit_ios",
            from: "2.7.0"
        ),
        .package(
            name: "ZendeskSDKAnalyticsKit",
            url: "https://github.com/zendesk/sdk_analytics_kit_ios",
            from: "0.1.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKMessaging",
            path: "ZendeskSDKMessaging.xcframework"
        ),
        .target(
            name: "ZendeskSDKMessagingTargets",
            dependencies: [
                .target(name: "ZendeskSDKMessaging"),
                .product(name: "ZendeskSDKConversationKit", package: "ZendeskSDKConversationKit"),
                .product(name: "ZendeskSDKUIComponents", package: "ZendeskSDKUIComponents"),
                .product(name: "ZendeskSDK", package: "ZendeskSDK"),
                .product(name: "ZendeskSDKCoreUtilities", package: "ZendeskSDKCoreUtilities"),
                .product(name: "ZendeskSDKGuideKit", package: "ZendeskSDKGuideKit"),
                .product(name: "ZendeskSDKAnalyticsKit", package: "ZendeskSDKAnalyticsKit")
            ],
            path: "Sources"
        )
    ]
)
