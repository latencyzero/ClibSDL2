import XCTest
@testable import ClibSDL2

final class ClibSDL2Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ClibSDL2().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
