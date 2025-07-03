import ProjectDescription

let project = Project(
    name: "jeongstudy",
    targets: [
        .target(
            name: "jeongstudy",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.jeongstudy",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["jeongstudy/Sources/**"],
            resources: ["jeongstudy/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "jeongstudyTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.jeongstudyTests",
            infoPlist: .default,
            sources: ["jeongstudy/Tests/**"],
            resources: [],
            dependencies: [.target(name: "jeongstudy")]
        ),
    ]
)
