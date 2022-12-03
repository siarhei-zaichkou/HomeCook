
import UIKit

class CuisineViewController: UIViewController {
    
    let dishes = Dish.getDishes()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(dishes)
        
    }
    
}
