// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright 2016-2021 The Khronos Group Inc.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "glm",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "glm",
            targets: ["glm"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "glm",
            dependencies: [],
            path: ".",
            exclude: ["CMakeLists.txt",
                      "copying.txt",
                      "manual.md",
                      ".travis.yml",
                      "readme.md",
                      ".appveyor.yml",
                      "test",
                      "util",
                      "cmake",
                      "doc",
                      ".github"],
            sources: [],
            publicHeadersPath: "."),
    ],
    cxxLanguageStandard: .cxx14
)
