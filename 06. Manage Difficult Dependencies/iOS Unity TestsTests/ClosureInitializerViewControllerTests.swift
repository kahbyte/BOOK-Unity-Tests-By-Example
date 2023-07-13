@testable import iOS_Unity_Tests
import XCTest

final class ClosureInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController { Analytics() }
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
