//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Ali Cangül on 12.10.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework : Framework
    @Binding var isShowDetailView: Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            XDismissButton(isShowDetailView: $isShowDetailView)
           
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
                
            }label: {
                AFButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
                
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,isShowDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
