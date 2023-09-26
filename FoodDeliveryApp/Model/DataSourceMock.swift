//
//  DataSourceMock.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 25/09/23.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Resturantes", image: "hamburguer"),
    OrderType(id: 2, name: "Mercado", image: "mercado"),
    OrderType(id: 3, name: "Farmácia", image: "farmacia"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Descontos", image: "descontos"),
    OrderType(id: 6, name: "Bebidas", image: "bebidas"),
    OrderType(id: 7, name: "Gourmet", image: "gourmet")
]

let promoMock: [PromoItem] = [
    PromoItem(id: 1, name: "Salada", image: "salada-banner", shortDescription: "Comece uma semana saudavel", promoDay: "Segunda-feira"),
    PromoItem(id: 2, name: "Frutas", image: "frutas-banner", shortDescription: "As melhores da estação o ano todo", promoDay: "Quarta-feira"),
    PromoItem(id: 3, name: "Churrasco", image: "churrasco-banner", shortDescription: "Churrasco para toda família", promoDay: "Sexta-feira")
]

let storeMock: [StoreItem] = [
    StoreItem(id: 1, name: "Burguerburguer"),
    StoreItem(id: 2, name: "Onlyburguer"),
    StoreItem(id: 3, name: "Sameburguer"),
    StoreItem(id: 4, name: "Oldburguer"),
    StoreItem(id: 5, name: "Your Last Burguer")
]
