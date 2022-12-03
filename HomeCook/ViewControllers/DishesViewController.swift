
import UIKit

class DishesViewController: UIViewController {
    
    @IBOutlet var dishButtons: [UIButton]!
    var dishes: [Dish]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (button, dish) in zip(dishButtons, dishes) {
            button.setTitle(dish.title, for: .normal)
        }
        title = dishes[0].cuisine.rawValue
    }
}
