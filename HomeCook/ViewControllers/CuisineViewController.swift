
import UIKit

class CuisineViewController: UIViewController {
    
    @IBOutlet var cuisineButtons: [UIButton]!
    
    let dishes = Dish.getDishes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (button, dish) in zip(cuisineButtons, Cuisine.allCases) {
            button.setTitle(dish.rawValue, for: .normal)
        }
    }
    
    @IBAction func cuisineButtonPressed(_ sender: UIButton) {
        guard let dishesVC = storyboard?
                .instantiateViewController(withIdentifier: "DishesVC")
                as? DishesViewController else { return }
        switch sender.titleLabel?.text {
        case "Итальянская":
            dishesVC.dishes = dishes.filter { $0.cuisine == .italy }
        case "Русская":
            dishesVC.dishes = dishes.filter { $0.cuisine == .russia }
        case "Американская":
            dishesVC.dishes = dishes.filter { $0.cuisine == .usa }
        default:
            dishesVC.dishes = dishes.filter { $0.cuisine == .georgia }
        }
        navigationController?.pushViewController(dishesVC, animated: true)
    }
}
