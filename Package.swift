// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ClibSDL2",
    products: [
        .library(
            name: "ClibSDL2",
            targets: ["ClibSDL2"]),
    ],
    dependencies: [
    ],
    targets: [
		.systemLibrary(name: "ClibSDL2",
			providers: [
				.brew(["sdl2"]),
				.apt(["libsdl2"]),
			]),
		.target(name: "example", dependencies: ["ClibSDL2"])
    ]
)
