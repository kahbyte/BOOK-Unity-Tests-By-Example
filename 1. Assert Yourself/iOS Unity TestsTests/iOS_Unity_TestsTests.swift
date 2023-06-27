import XCTest
@testable import iOS_Unity_Tests

final class iOS_Unity_TestsTests: XCTestCase {
    func test_assertTrue() {
        let success = false
        XCTAssertTrue(success)
    }
    
    func test_assertNil() {
        let optionalValue: Int? = 123
        XCTAssertNil(optionalValue)
    }
    
    struct SimpleStruct: CustomStringConvertible {
        var description: String { "(\(x), \(y))" }
        
        let x: Int
        let y: Int
    }
    
    func test_assertNil_withSimpleStruct() {
        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }

    func test_assertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }
    
}
