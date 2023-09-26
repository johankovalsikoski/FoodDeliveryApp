//
//  ToastModifier.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 26/09/23.
//

import Foundation

struct ToastModifier: Equatable {
    var type: ToastType
    var title: String
    var message: String
    var duration: ToastDuration
}
