//
//  Products.swift
//  ProductList
//
//  Created by Kydyrgazy Sailau on 12.01.2023.
//

import Foundation

class Products {
    var products = [Product]()
    
    init() {
        let product1 = Product(name: "Шорпа", price: 1020, image: #imageLiteral(resourceName: "шорпа Малый"))
        let product2 = Product(name: "Куриный бульон", price: 870, image: #imageLiteral(resourceName: "куриный бульон Малый"))
        let product3 = Product(name: "Мясо по-казахски", price: 990, image: #imageLiteral(resourceName: "мясо по-казахски Малый"))
        let product4 = Product(name: "Уйгурские манты", price: 1080, image: #imageLiteral(resourceName: "уйгурские манты Малый"))
        let product5 = Product(name: "Гуйру лагман", price: 1180, image: #imageLiteral(resourceName: "гуйру лагман Малый"))
        let product6 = Product(name: "Ташкенсткий плов", price: 1190, image: #imageLiteral(resourceName: "ташкентский плон Малый"))
        let product7 = Product(name: "Гуляш", price: 1320, image: #imageLiteral(resourceName: "гуляш Малый"))
        let product8 = Product(name: "Ачичук", price: 720, image: #imageLiteral(resourceName: "ачичук Малый"))
        let product9 = Product(name: "Греческий", price: 890, image: #imageLiteral(resourceName: "греческий Малый"))
        let product10 = Product(name: "Цезарь", price: 1080, image: #imageLiteral(resourceName: "цезарь Малый"))
        products = [product1, product2, product3, product4, product5, product6, product7, product8, product9, product10]
    }
    
}
