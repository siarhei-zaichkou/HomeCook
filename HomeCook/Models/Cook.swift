
struct Cook {
    let name: String
    let description: String
    let rate: Int
    let photo: String
}

extension Cook {
    static func getCooks() -> [Cook] {
        return [

        Cook(name: "Валерия Гилева", description: "Один из самых душевных и высококвалифицированных наших поваров. Проходил стажировки в разных странах, работал в лучших ресторанах города.", rate: 25, photo: "lera"),
        Cook(name: "Заичков Сергей", description: "Бренд-шеф, очаровывающий невероятной харизмой и чувством юмора. Номинант всероссийского конкурса Шеф а ля Русс, путешественник, изучивший 17 кухонь мира на их родине.", rate: 30, photo: "sergey"),
        Cook(name: "Ольга Тегза", description: "Квалифицированный повар приготовит диетические, вегетарианские, детские и просто вкусные блюда разных кухонь мира, сможет провести и обслужить банкеты, фуршеты, семейные праздники.", rate: 35, photo: "olya"),
        Cook(name: "Михаил Кислухин", description: "Повар с международным опытом в лучших ресторанах. Найдет подход даже к самым неискушенным гурманам. Удивит тонкими сочетаниями и красивой подачей.", rate: 40, photo: "misha")
        ]
    }
}
