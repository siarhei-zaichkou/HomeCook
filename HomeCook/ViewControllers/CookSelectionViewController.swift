
import UIKit

class CookSelectionViewController: UIViewController {

    @IBOutlet var priceWithoutCook: UILabel!
    var dishPrice: Int!
    let cook = Cook(
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.title = "Back"
        navigationItem.backBarButtonItem?.tintColor = .systemGray
        
        priceWithoutCook.text = String(dishPrice)

    }


}
