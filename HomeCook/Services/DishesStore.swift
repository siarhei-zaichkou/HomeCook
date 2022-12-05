
class DishesStore {
    static let shared = DishesStore()
    
    let dishes: [[String: Cuisine] : [Ingredient]] = [
        ["Паста карбонара": .italy]:
            [
                Ingredient(title: spaghetti.0, price: spaghetti.1),
                Ingredient(title: ham.0, price: ham.1),
                Ingredient(title: eggs.0, price: eggs.1),
                Ingredient(title: cheese.0, price: cheese.1),
                Ingredient(title: cream.0, price: cream.1),
            ],
        ["Лазанья с ветчиной": .italy]:
            [
                Ingredient(title: ham.0, price: ham.1),
                Ingredient(title: cream.0, price: cream.1),
                Ingredient(title: lasagnaSheets.0, price: lasagnaSheets.1),
                Ingredient(title: cheese.0, price: cheese.1),
            ],
        ["Паста феттучини": .italy]:
            [
                Ingredient(title: spaghetti.0, price: spaghetti.1),
                Ingredient(title: ham.0, price: ham.1),
                Ingredient(title: cream.0, price: cream.1),
                Ingredient(title: cheese.0, price: cheese.1)
            ],
        ["Голубцы": .russia]:
            [
                Ingredient(title: pork.0, price: pork.1),
                Ingredient(title: cabbage.0, price: cabbage.1),
                Ingredient(title: rice.0, price: rice.1),
                Ingredient(title: onion.0, price: onion.1),
                Ingredient(title: sourCream.0, price: sourCream.1)
            ],
        ["Жаркое в горшочке": .russia]:
            [
                Ingredient(title: onion.0, price: onion.1),
                Ingredient(title: pork.0, price: pork.1),
                Ingredient(title: potatoes.0, price: potatoes.1),
                Ingredient(title: cheese.0, price: cheese.1),
                Ingredient(title: sourCream.0, price: sourCream.1)
            ],
        ["Свинина с картофелем": .russia]:
            [
                Ingredient(title: garlic.0, price: garlic.1),
                Ingredient(title: potatoes.0, price: potatoes.1),
                Ingredient(title: pork.0, price: pork.1),
                Ingredient(title: sourCream.0, price: sourCream.1)
            ],
        ["Стейк из говядины": .usa]:
            [
                Ingredient(title: butter.0, price: butter.1),
                Ingredient(title: beef.0, price: beef.1)
            ],
        ["Говядина запеченая": .usa]:
            [
                Ingredient(title: tomatoes.0, price: tomatoes.1),
                Ingredient(title: onion.0, price: onion.1),
                Ingredient(title: beef.0, price: beef.1),
                Ingredient(title: carrot.0, price: carrot.1)
            ],
        ["Говядина в пиве": .usa]:
            [
                Ingredient(title: onion.0, price: onion.1),
                Ingredient(title: beef.0, price: beef.1),
                Ingredient(title: lightBeer.0, price: lightBeer.1)
            ],
        ["Хинкали": .georgia]:
            [
                Ingredient(title: flour.0, price: flour.1),
                Ingredient(title: lamb.0, price: lamb.1),
                Ingredient(title: salo.0, price: salo.1),
                Ingredient(title: onion.0, price: onion.1),
                Ingredient(title: garlic.0, price: garlic.1),
            ],
        ["Долма с бараниной": .georgia]:
            [
                Ingredient(title: lamb.0, price: lamb.1),
                Ingredient(title: rice.0, price: rice.1),
                Ingredient(title: grapeLeaves.0, price: grapeLeaves.1),
                Ingredient(title: garlic.0, price: garlic.1),
                Ingredient(title: sourCream.0, price: sourCream.1)
            ],
        ["Чакапули": .georgia]:
            [
                Ingredient(title: lamb.0, price: lamb.1),
                Ingredient(title: greenOnion.0, price: greenOnion.1),
                Ingredient(title: parsley.0, price: parsley.1),
                Ingredient(title: whiteWine.0, price: whiteWine.1),

            ]
    ]

    private init() {}
}

let spaghetti = ("Спагетти", 5)
let ham = ("Ветчина", 14)
let eggs = ("Яйца", 7)
let cheese = ("Сыр", 10)
let cream = ("Сливки", 4)
let lasagnaSheets = ("Листы лазаньи", 5)
let pork = ("Свинина", 15)
let cabbage = ("Капуста", 4)
let rice = ("Рис", 5)
let onion = ("Лук", 3)
let sourCream = ("Сметана", 4)
let potatoes = ("Картофель", 3)
let garlic = ("Чеснок", 3)
let butter = ("Масло", 5)
let beef = ("Говядина", 17)
let tomatoes = ("Помидоры", 7)
let carrot = ("Морковь", 4)
let lightBeer = ("Светлое пиво", 7)
let flour = ("Мука", 4)
let lamb = ("Баранина", 18)
let salo = ("Сало", 8)
let grapeLeaves = ("Листья винограда", 2)
let greenOnion = ("Зеленый лук", 3)
let parsley = ("Петрушка", 3)
let whiteWine = ("Белое сухое вино", 20)

