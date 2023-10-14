//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Ali Cangül on 11.10.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    var columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                       
                            FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                        }

                        }

                }
            }
       
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!,isShowDetailView: $viewModel.isShowingDetailView)
            }

        }
        
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
            FrameworkGridView()
            .preferredColorScheme(.dark)

        }
}
}


