import UIKit

class ClosureInitializerViewController: UIViewController {
    private let makeAnalytics: () -> Analytics
    
    init(makeAnalytics: @escaping () -> Analytics = { Analytics.shared }) {
        self.makeAnalytics = makeAnalytics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) { super.viewDidAppear(animated)
        makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
    }
}
