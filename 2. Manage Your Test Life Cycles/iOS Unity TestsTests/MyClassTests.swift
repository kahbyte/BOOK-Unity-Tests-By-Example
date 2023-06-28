import XCTest

@testable import iOS_Unity_Tests

final class MyClassTests: XCTestCase {
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        sut = MyClass()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_methodOne() {
        sut.methodOne()
        
    }
    
    func test_methodTwo() {
        sut.methodTwo()
    }
}
