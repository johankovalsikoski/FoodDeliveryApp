//
//  ToastViewModifier.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 26/09/23.
//

import Foundation
import SwiftUI

struct ToastViewModifier: ViewModifier {
    @Binding var toast: ToastModifier?
    @State private var workItem: DispatchWorkItem?
    
    func body(content: Content) -> some View {
        content.frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(ZStack {
                mainToastView()
                    .offset(y: -30)
            })
            .onChange(of: toast) {
                showToast()
            }
    }
    
    @ViewBuilder func mainToastView() -> some View {
        if let toast = toast {
            VStack {
                Spacer()
                ToastMessageView(modifier: toast, onCancelTapped: {
                    dismissToast()
                })
                    .transition(.move(edge: .bottom))
            }
        }
    }
    
    private func showToast() {
        guard let toast = toast else { return }
        
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
        
        if toast.duration.rawValue > 0 {
            workItem?.cancel()
            
            let task = DispatchWorkItem {
                 dismissToast()
            }
            
            workItem = task
            DispatchQueue.main.asyncAfter(deadline: .now() + toast.duration.rawValue, execute: task)
        }
        
    }
    
    private func dismissToast() {
        withAnimation {
            toast = nil
        }
        
        workItem?.cancel()
        workItem = nil
    }
}
