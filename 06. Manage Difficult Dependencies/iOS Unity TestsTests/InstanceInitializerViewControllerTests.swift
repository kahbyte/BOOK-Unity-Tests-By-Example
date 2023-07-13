@testable import iOS_Unity_Tests
import XCTest

final class InstanceInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut =  InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
