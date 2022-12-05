
struct Dish {
    let title: String
    let cuisine: Cuisine
    let ingredients: [Ingredient]
   // let image: String
   
    var price: Int {
        var cost = 0
        ingredients.forEach { ingredient in cost += ingredient.price }
        return cost
    }
}

extension Dish {
    static func getDishes() -> [Dish] {
        var dishes: [Dish] = []
        
        for dish in DishesStore.shared.dishes {
            dish.key.forEach {
                dishes.append(
                    Dish(
                        title: $0.key, cuisine: $0.value, ingredients: dish.value
                    )
                )
            }
        }
        return dishes
    }
}

enum Cuisine: String, CaseIterable {
    case italy = "Итальянская кухня"
    case russia = "Русская кухня"
    case usa = "Американская кухня"
    case georgia = "Грузинская кухня"
}
