
import Foundation


struct Position {
    let dish: Dish
    var count: Double
    var cost: Double {
        dish.price * count
    }
}
