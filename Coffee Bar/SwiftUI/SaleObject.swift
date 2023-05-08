//
//  SaleObject.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import Foundation
class SaleObject: ObservableObject{
    @Published var sales: [Sale] = []
    init(){
        sales.append(Sale(image: "first_sale",
                          title: "🌺 SPRING MENU 🌷",
                          description: """
                          🌷It's time to Bloom and fall in love!
                          Drinks that perfectly reflect the Taste and
                          Aroma of Spring!

                          🍋LEMONADE Currant-Basil
                          🌺SMOOTHIE Raspberry-Violet
                          🍊SMOOTHIE Sea buckthorn-orange
                          Taste it at every Coffee bar
                          """))
        sales.append(Sale(image: "second_sale",
                          title: "NEW BAR IN KYIV 💙",
                          description: """
                          A brand new Coffee bar has opened on Khreshchatyk! Because our cafes are never enough!
                          ☕️ Fresh croissants, aromatic coffee, nutritious smoothies - the taste and aroma that you want to feel again and again!
                          In honor of the opening, as always, we have very nice promotions and offers!
                          🎁 Visit us today!
                          ⌚️ Working hours: 08:00-21:00
                          """))
        sales.append(Sale(image: "third_sale",
                          title: "MORNING HAPPY HOURS🔥",
                          description: """
                          MORNING HAPPY HOURS!
                          DON'T MISS YOUR BREAKFAST!
                          We give morning Happy Hours! 🔥
                          -20% from the opening for something you can't imagine your
                          start of the day without!
                          Sweet CROISSANT 🥐 + COFFEE ☕️
                          We love and look forward to you every morning!
                          """))
        
        
    }
}
struct Sale{
    let image: String
    let title: String
    let description: String
}
