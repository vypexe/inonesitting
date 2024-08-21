//
//  ViewModel.swift
//  inonesitting
//
//  Created by Allen Lin on 5/20/23.
//

import Foundation
import SwiftUI
import Combine

class ViewModel: ObservableObject {
    @Published var showSecondView = false
    
    // Call this method to trigger the navigation to View B
       func goToViewB() {
           showSecondView = true
       }
}
