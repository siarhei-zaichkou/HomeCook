
struct Position {
    let dish: Dish
    var count: Int
    let cook: Cook
    var cost: Int {
        dish.price * count
    }
}
