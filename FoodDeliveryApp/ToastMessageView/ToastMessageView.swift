//
//  ToastMessageView.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 26/09/23.
//

import SwiftUI

struct ToastMessageView: View {
    let modifier: ToastModifier
    var onCancelTapped: (() -> Void)
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(systemName: modifier.type.icon)
                    .foregroundColor(modifier.type.themeColor)
                
                VStack(alignment: .leading) {
                    Text(modifier.title)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text(modifier.message)
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                        .opacity(0.6)
                }
                
                Spacer(minLength: 10)
                
                Button {
                    onCancelTapped()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.black)
                }
            }
            .padding()
        }
        .background(Color.white)
        .overlay(
            Rectangle()
                .fill(modifier.type.themeColor)
                .frame(width: 6)
                .clipped(),
            alignment: .leading
        )
        .frame(minWidth: 0, maxWidth: .infinity)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 1)
        .padding(.horizontal, 16)
    }
}

#Preview {
    ToastMessageView(
        modifier: ToastModifier(type: .success, title: "Say hello to my little friend", message: "💥💥💥💥💥", duration: ToastDuration.long), onCancelTapped: {}
    )
    .previewLayout(.sizeThatFits)
}
