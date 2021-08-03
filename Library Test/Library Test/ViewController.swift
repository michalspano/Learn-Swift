import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lessonView: UILabel!
    @IBOutlet var lessonButton: UIButton!
    @IBOutlet var mainScene: UIView!
    var swipeCount = 1
    var colorChange = UIColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        lessonView?.layer.masksToBounds = true
        lessonView.layer.cornerRadius = 50
        updateBG()
    }
    func check() {
        if swipeCount > 5 {
            swipeCount = 5
        }
        if swipeCount < 1 {
            swipeCount = 1
        }
    }
    
    func updateBG() {
        if swipeCount > 0 && swipeCount <= 5 {
            switch swipeCount {
            case 1:
                colorChange = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            case 2:
                colorChange = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            case 3:
                colorChange = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            case 4:
                colorChange = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            case 5:
                colorChange = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            default:
                break
            }
            UIButton.animate(withDuration: 0.5, delay: 0.2, animations: {
                self.lessonButton.setTitle("Lesson \(String(self.swipeCount))", for: .normal)
            })
            UIView.animate(withDuration: 1.0, delay: 0.2, options: UIView.AnimationOptions.curveEaseInOut, animations: {
                self.mainScene.backgroundColor = self.colorChange
            })
            updateLessonLabel()
            
        }
    }
    func updateLessonLabel() {
        UILabel.animate(withDuration: 0.5, animations: {
            self.lessonView.transform = CGAffineTransform(translationX: 0, y: -50)
        }, completion: {_ in
            UILabel.animate(withDuration: 0.5, animations: {
                self.lessonView.text = ("Lesson\(self.swipeCount)")
            }, completion: {
                Void in UILabel.animate(withDuration: 1.0, animations: {
                    self.lessonView.transform = CGAffineTransform(translationX: 0.0, y: 0.0)
                })
            })
        })
    }
    
    @IBAction func didSwipeLeft(_ sender: Any) {
        swipeCount += 1
        check()
        updateBG()
    }
    

    @IBAction func didSwipeRight(_ sender: Any) {
        swipeCount -= 1
        check()
        updateBG()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        performSegue(withIdentifier: "Segue\(swipeCount)", sender: (Any).self)
    }
}

