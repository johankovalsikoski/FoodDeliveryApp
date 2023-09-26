//
//  OrderTypeGridView.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 25/09/23.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 10) {
            ForEach(ordersMock) { orderItem in
                OrderTypeView(orderType: orderItem)
            }
        }.frame(height: 250)
            .padding(.horizontal, 20)
            .padding(.vertical, 15)
    }
}

#Preview {
    OrderTypeGridView()
        .previewLayout(.sizeThatFits)
}
