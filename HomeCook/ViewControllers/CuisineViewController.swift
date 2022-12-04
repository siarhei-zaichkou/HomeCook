
import UIKit

class CuisineViewController: UIViewController {
    
    @IBOutlet var cuisineButtons: [UIButton]!
    
    let dishes = Dish.getDishes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        for (button, dish) in zip(cuisineButtons, Cuisine.allCases) {
            button.setTitle(dish.rawValue, for: .normal)
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
