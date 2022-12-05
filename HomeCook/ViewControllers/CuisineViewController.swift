
import UIKit

class CuisineViewController: UIViewController {
    
    @IBOutlet var cuisineButtons: [UIButton]!
    
    let dishes = Dish.getDishes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.title = "Back"
        navigationItem.backBarButtonItem?.tintColor = .systemGray
        
        setupButtons()
    }
    
    @IBAction func cuisineButtonPressed(_ sender: UIButton) {
        guard let dishesVC = storyboard?
                .instantiateViewController(withIdentifier: "DishesVC")
                as? DishesViewController else { return }
        
        dishesVC.dishes = getCuisineDishes(of: sender)
        
        navigationController?.pushViewController(dishesVC, animated: true)
    }
    
    // MARK: - Private Methods
    
    private func setupButtons() {
        for (button, cuisine) in zip(cuisineButtons, Cuisine.allCases) {
            button.setTitle(cuisine.rawValue, for: .normal)
        }
    }
    
    private func getCuisineDishes(of sender: UIButton) -> [Dish] {
        var cuisineDishes: [Dish] = []
        for dish in dishes {
            if dish.cuisine.rawValue == sender.titleLabel?.text {
                cuisineDishes.append(dish)
            }
        }
        return cuisineDishes
    }
}
