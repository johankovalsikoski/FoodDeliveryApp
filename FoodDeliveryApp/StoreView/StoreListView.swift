//
//  StoreListView.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 26/09/23.
//

import SwiftUI

struct StoreListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Lojas")
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30, content: {
                ForEach(storeMock) { mock in
                    StoreItemView(store: mock)
                }
            })
        }.padding(20)
    }
}

#Preview {
    StoreListView()
}
