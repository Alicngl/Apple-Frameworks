//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Ali Cangül on 14.10.2023.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    
    let url:URL
    
    func makeUIViewController(context:UIViewControllerRepresentableContext<SafariView>)-> SFSafariViewController{
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController:SFSafariViewController,context:UIViewControllerRepresentableContext<SafariView>){
        
    }
}

