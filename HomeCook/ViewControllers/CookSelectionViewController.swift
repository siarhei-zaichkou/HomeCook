
import UIKit

class CookSelectionViewController: UIViewController {


    var dishPrice: Int!
    let cooks = Cook.getCooks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.title = "Back"
        navigationItem.backBarButtonItem?.tintColor = .systemGray
        
    }

    
    @IBAction func cookButtonPressed(_ sender: UIButton) {
        guard let orderVC = storyboard?
                .instantiateViewController(withIdentifier: "OrderVC")
                as? OrderViewController else { return }
        navigationController?.pushViewController(orderVC, animated: true)
    }
    
}
