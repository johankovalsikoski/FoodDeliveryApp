//
//  PromoCarouselView.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 25/09/23.
//

import SwiftUI

struct PromoCarouselView: View {
    var body: some View {
        TabView {
            ForEach(promoMock) { item in
                CarouselItemView(promoItem: item)
            }
        }.frame(height: 160)
            .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    PromoCarouselView()
}
