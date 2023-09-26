//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 25/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var toast: ToastModifier? = nil
    
    var body: some View {
        VStack {
            NavigationBarView()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    OrderTypeGridView()
                    PromoCarouselView()
                    StoreListView()
                    Button {
                        let random = Int.random(in: 1...4)
                        var randomToast: ToastModifier {
                            switch random {
                            case 1: return ToastModifier(type: ToastType.error, title: "Error", message: "An error occurred", duration: ToastDuration.long)
                                
                            case 2: return ToastModifier(type: ToastType.info, title: "Info", message: "This is an info", duration: ToastDuration.long)
                                
                            case 3: return ToastModifier(type: ToastType.success, title: "Success", message: "Everything went just fine", duration: ToastDuration.long)
                                
                            default:
                                return ToastModifier(type: ToastType.warning, title: "Warning", message: "Check your connection", duration: ToastDuration.long)
                            }
                        }
                        
                        toast = randomToast
                    } label: {
                        Text("Invoke Random Toast")
                    }
                }
            }
        }
        .padding()
        .toastView(toast: $toast)
    }
}

#Preview {
    ContentView()
}
