
import UIKit

class ProductsViewController: UIViewController {
    
    @IBOutlet var ingredientStacks: [UIStackView]!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
        print(dish.price)
    }
    
    @IBAction func chooseCookButtonPressed() {
        guard let cookSelectionVC = storyboard?
                .instantiateViewController(withIdentifier: "CookSelectionVC")
                as? CookSelectionViewController else { return }
        
        cookSelectionVC.dishPrice = calculateDishPrice()
        navigationController?.pushViewController(cookSelectionVC, animated: true)
    }
    
    
    // MARK: - Private Methods
    
    private func setupLabels() {
        ingredientStacks.forEach { $0.isHidden = true }
        for (stack, ingredient) in zip(ingredientStacks, dish.ingredients) {
            guard let label = stack.arrangedSubviews.first as? UILabel else { return }
            stack.isHidden = false
            label.text = ingredient.title
        }
    }
    private func calculateDishPrice() -> Int {
        var dishPrice = dish.price
        for (stack, ingredient) in zip(ingredientStacks, dish.ingredients) {
            guard let toggle = stack.arrangedSubviews.last as? UISwitch else { return 0 }
            dishPrice -= toggle.isOn ? ingredient.price : 0
        }
        return dishPrice
    }
}
