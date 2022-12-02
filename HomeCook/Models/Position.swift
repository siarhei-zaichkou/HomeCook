
struct Position {
    let dish: Dish
    var count: Double
    let cook: Cook
    var cost: Double {
        dish.price * count
    }
}
