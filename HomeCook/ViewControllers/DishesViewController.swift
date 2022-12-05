
import UIKit

class DishesViewController: UIViewController {
    
    @IBOutlet var dishButtons: [UIButton]!
    @IBOutlet var dishPictures: [UIImageView]!
    
    var dishes: [Dish]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.title = "Back"
        navigationItem.backBarButtonItem?.tintColor = .systemGray
        
        title = dishes[0].cuisine.rawValue
        
        setupButtons()
        setupPictures()
    }
    
    @IBAction func dishButtonPressed(_ sender: UIButton) {
        
        guard let productsVC = storyboard?
                .instantiateViewController(withIdentifier: "ProductsVC")
                as? ProductsViewController else { return }
        
        productsVC.dish = getDish(of: sender)
        
        navigationController?.pushViewController(productsVC, animated: true)
        
    }
    
    // MARK: - Private Methods
    
    private func setupButtons() {
        for (button, dish) in zip(dishButtons, dishes) {
            button.setTitle(dish.title, for: .normal)
        }
    }
    
    private func setupPictures() {
        for (picture, button) in zip(dishPictures, dishButtons) {
            picture.image = UIImage(named: button.titleLabel?.text ?? "")

        }
    }
    
    private func getDish(of sender: UIButton) -> Dish {
        for dish in dishes {
            if dish.title == sender.titleLabel?.text {
                return dish
            }
        }
        return dishes[0] // default
    }
}
