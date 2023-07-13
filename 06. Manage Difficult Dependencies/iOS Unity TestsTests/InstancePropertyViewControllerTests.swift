@testable import iOS_Unity_Tests
import XCTest

final class InstancePropertyViewControllerTests: XCTestCase {
    func test_viewDidiAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analytics = Analytics()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
