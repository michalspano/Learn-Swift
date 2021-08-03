import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        checkSettings()
    }
    @IBAction func didTapRetreat(_ sender: Any) {
        performSegue(withIdentifier: "retreat", sender: (Any).self)
    }
    func checkSettings() {
        if UserDefaults.standard.bool(forKey: "dark") == true {
            overrideUserInterfaceStyle = .dark
        }
        else {
            overrideUserInterfaceStyle = .light
        }
        
    }
    
}
