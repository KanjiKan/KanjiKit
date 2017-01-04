import XCTest
@testable import KanjiKit

class KanjiKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(KanjiKit().text, "Hello, World!")
    }


    static var allTests : [(String, (KanjiKitTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
