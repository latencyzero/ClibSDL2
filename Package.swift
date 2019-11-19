// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ClibSDL2",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ClibSDL2",
            targets: ["ClibSDL2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
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
