
import UIKit

class CookSelectionViewController: UIViewController {

    @IBOutlet var priceWithoutCook: UILabel!
    var dishPrice: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceWithoutCook.text = String(dishPrice)

    }


}
