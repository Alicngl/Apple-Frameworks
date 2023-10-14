//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Ali Cangül on 12.10.2023.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
