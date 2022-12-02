
struct Dish {
    let title: String
    let ingredients: [Ingredient]
    var price: Double {
        var cost = 0.0
        ingredients.forEach { ingredient in cost += ingredient.price }
        return cost
    }
}
