//
//  ToastType.swift
//  FoodDeliveryApp
//
//  Created by Johan Kovalsikoski on 26/09/23.
//

import Foundation
import SwiftUI

enum ToastType {
    case info
    case success
    case error
    case warning
}

extension ToastType {
    var themeColor: Color {
        switch self {
            case .error: return Color.red
            case .warning: return Color.orange
            case .info: return Color.blue
            case .success: return Color.green
        }
    }
        
    var icon: String {
        switch self {
            case .info: return "info.circle.fill"
            case .success: return "checkmark.circle.fill"
            case .error: return "xmark.circle.fill"
            case .warning: return "exclamationmark.triangle.fill"
        }
    }
}

enum ToastDuration: Double {
    case short = 3.0
    case long = 5.0
}
