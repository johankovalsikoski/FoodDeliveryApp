//
//  View.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 26/09/23.
//

import Foundation
import SwiftUI

extension View {
    func toastView(toast: Binding<ToastModifier?>) -> some View {
        self.modifier(ToastViewModifier(toast: toast))
    }
}
