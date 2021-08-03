import UIKit

class QuoteDetailViewController: UIViewController {
    
    var quote = String()

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.text = quote
        
        
    }

}
