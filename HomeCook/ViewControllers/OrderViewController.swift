
import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet var dishTitleLabel: UILabel!
    @IBOutlet var dishImageView: UIImageView!
    
    @IBOutlet var selectedCookLabel: UILabel!
    @IBOutlet var totalPriceLabel: UILabel!
    @IBOutlet var quantityLabel: UILabel!
    
    @IBOutlet var stepper: UIStepper!
    
    var totalPrice: Int!
    var dishTitle: String!
    var cook: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCookData()
        setupDishData()
        stepper.value = 1
        title = "Заказ"
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        quantityLabel.text = Int(sender.value).description
        setupTotalPrice()
    }
    
    @IBAction func orderButtonTapped() {
        showAlert(
            withtitle: "Поздравляем! Вы успешно завершили просмотр приложения!",
            andMessage: "Надеемся, Вам понравилось. Благодарим за внимание!"
        )
    }
}

// MARK: - Private Methods
extension OrderViewController {
    private func setupDishData() {
        dishTitleLabel.text = dishTitle
        dishImageView.image = UIImage(named: String(dishTitle))
        setupTotalPrice()
    }
    
    private func setupCookData() {
        selectedCookLabel.text = cook
        
    }
    
    private func setupTotalPrice() {
        guard let quantity = Int(quantityLabel.text ?? "1") else { return }
        totalPriceLabel.text = (totalPrice * quantity).description
    }

}

extension OrderViewController {
    private func showAlert(withtitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default) {_ in
                self.navigationController?.dismiss(animated: true)
            }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
