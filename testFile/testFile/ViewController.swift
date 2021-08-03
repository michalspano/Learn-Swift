
import UIKit

class ViewController: UIViewController {

    @IBOutlet var animationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        animation()

    }
    @IBAction func didTapButton(_ sender: Any) {
        print("Button click")
        checkAssets()
        performSegue(withIdentifier: "push", sender: (Any).self)
    }
    @IBAction func darkModeOptions(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "dark")
    }
    @IBAction func lightModeOption(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "dark")
    }
    func checkAssets() {
        if UserDefaults.standard.bool(forKey: "dark") == true {
            print("Dark mode ON")
        }
        else {
            print("Dark mode OFF")
        }
    }
    func animation() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01, execute: {
            UIView.animate(withDuration: 2.0, animations: {
                self.animationView.transform = CGAffineTransform(a: 10, b: 0, c: 0, d: 0, tx: 0, ty: 0)
            })
        })
    }
    
}
