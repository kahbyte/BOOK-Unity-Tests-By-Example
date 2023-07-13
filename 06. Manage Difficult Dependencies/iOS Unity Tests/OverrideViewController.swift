import UIKit

class OverrideViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func analytics() -> Analytics {
        return Analytics.shared
    }
    
    override func viewDidAppear(_ animated: Bool) { super.viewDidAppear(animated)
        analytics().track(event: "viewDidAppear - \(type(of: self))")
    }
}
