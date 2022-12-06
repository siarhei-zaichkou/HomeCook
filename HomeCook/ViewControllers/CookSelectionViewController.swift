
import UIKit

class CookSelectionViewController: UIViewController {

    @IBOutlet var cookButtons: [UIButton]!
    
    @IBOutlet var cookNamesLabels: [UILabel]!
    
    @IBOutlet var cookDescriptionLabel: [UILabel]!
    var dishPrice: Int!
    var dishTitle: String!
    let cooks = Cook.getCooks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem?.title = "Back"
        navigationItem.backBarButtonItem?.tintColor = .systemGray
        
        setupCooksPhotos()
        setupCooksLabels()
        setupCooksNamesLabels()
    }

    
    @IBAction func cookButtonPressed(_ sender: UIButton) {
        guard let orderVC = storyboard?
                .instantiateViewController(withIdentifier: "OrderVC")
                as? OrderViewController else { return }
        
        guard let buttonIndex = cookButtons.firstIndex(of: sender) else { return }
        orderVC.totalPrice = dishPrice + cooks[buttonIndex].rate
        orderVC.dishTitle = dishTitle
        navigationController?.pushViewController(orderVC, animated: true)
    }
    
    // MARK: - Private Methods
    
    private func setupCooksPhotos() {
        for (button, cook) in zip(cookButtons, cooks) {
            button.setImage(UIImage(named: cook.photo), for: .normal)
        }
    }
    
    private func setupCooksLabels() {
        for (label, cook) in zip(cookDescriptionLabel, cooks) {
            label.text = cook.description
        }
    }
    
    private func setupCooksNamesLabels() {
        for (label, cook) in zip(cookNamesLabels, cooks) {
            label.text = cook.name
        }
    }
    
}
