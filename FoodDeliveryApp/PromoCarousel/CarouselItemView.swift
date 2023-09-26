//
//  CarouselItemView.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 25/09/23.
//

import SwiftUI

struct CarouselItemView: View {
    let promoItem: PromoItem
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                
                Text("\(promoItem.promoDay) é dia de:")
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                    .shadow(color: .white, radius: 5)
                    .font(.system(size: 20))

                Text(promoItem.name)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
                    .textCase(.uppercase)
                
                Spacer()
                
                Text(promoItem.shortDescription)
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                    .lineLimit(2)
                
                Spacer()
                
            }.frame(alignment: .leading)
            
            
            Image(promoItem.image)
                .resizable()
                .scaledToFit()
            
            Spacer()

        }.frame(maxWidth: .infinity, maxHeight: 100)
            .padding()
            .background(
                LinearGradient(colors: [.red, .green, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(2)

    }
}

#Preview {
    CarouselItemView(promoItem: promoMock[1])
}
