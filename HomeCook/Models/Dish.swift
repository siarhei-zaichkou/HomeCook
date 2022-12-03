
struct Dish {
    let title: String
    let ingredients: [Ingredient]
    var price: Int {
        var cost = 0
        ingredients.forEach { ingredient in cost += ingredient.price }
        return cost
    }
}
