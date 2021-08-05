import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the

    }
    @IBAction func dealTapped(_ sender: Any) {
        
        
        //declaration of random value from 2-14 for both images
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        print(leftNumber)
        print(rightNumber)
        
        //update image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //compare random numbers
        if leftNumber > rightNumber {
            
            //Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
        else if leftNumber < rightNumber {
            
            //Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            //Tie
        }
    }
    
}

