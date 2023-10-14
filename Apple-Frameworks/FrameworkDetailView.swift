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
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Button{
                    isShowDetailView = false
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }
            .padding()
           
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                
            }label: {
                AFButton(title: "Learn More")
            }
                
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,isShowDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
