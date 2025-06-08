// swift-tools-version: 6.1

import PackageDescription

// Needs to come before Package
let swiftSettings: [SwiftSetting] = [.interoperabilityMode(.Cxx)]

let package = Package(
  name: "leetcode",
  targets: [
    // Swift
    .target(name: "LeetCode"),
    .testTarget(
      name: "LeetCodeTests",
      dependencies: ["LeetCode"]),
    // C++
    .target(
      name: "CPPLeetCode",
      swiftSettings: swiftSettings),
    .testTarget(
      name: "CPPLeetCodeTests",
      dependencies: ["CPPLeetCode"],
      swiftSettings: swiftSettings),
  ]
)
