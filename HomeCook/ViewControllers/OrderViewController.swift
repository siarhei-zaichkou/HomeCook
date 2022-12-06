
import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var dishTitleLabel: UILabel!
    @IBOutlet var dishImageView: UIImageView!
    @IBOutlet var totalPriceLabel: UILabel!
    @IBOutlet var quantityLabel: UILabel!
    
    @IBOutlet var stepper: UIStepper!
    var totalPrice: Int!
    var dishTitle: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        setupDishData()
        stepper.value = 1
        

    }
    

    @IBAction func stepperPressed(_ sender: UIStepper) {
        quantityLabel.text = Int(sender.value).description
        setupTotalPrice()
    }
    
    
    // MARK: - Private Methods
    
    private func setupDishData() {
        dishTitleLabel.text = dishTitle
        dishImageView.image = UIImage(named: String(dishTitle))
        setupTotalPrice()
    }
    
    private func setupTotalPrice() {
        guard let quantity = Int(quantityLabel.text ?? "1") else { return }
        totalPriceLabel.text = (totalPrice * quantity).description
    }
   
}

