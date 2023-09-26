//
//  StoreItemView.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 26/09/23.
//

import SwiftUI

struct StoreItemView: View {
    let store: StoreItem
    
    var body: some View {
        HStack {
            Image(store.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)

            VStack {
                Text(store.name)
                    .font(.subheadline)
            }
            Spacer()
        }.onTapGesture {
            print("Clicou em \(store.name)")
        }
    }
}

#Preview {
    StoreItemView(store: StoreItem(id: 0, name: "Monstro Burguer"))
}
