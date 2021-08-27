//
//  TabBarButton.swift
//  CustomTabBarWithEffects
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2021 Oscar R. Garrucho. All rights reserved.
//

import SwiftUI

struct TabBarButton: View {
    // MARK: - Properties
    
    var title: String
    var image: String
    var animation: Namespace.ID
    
    @EnvironmentObject var viewModel: TabViewModel
    
    // MARK: - Body
    
    var body: some View {
        Button {
            withAnimation {
                viewModel.currentTab = title
            }
        } label: {
            VStack {
                Image(systemName: image)
                    .font(.title2)
                
                Text(title)
                    .font(.caption.bold())
            } // VStack
            .foregroundColor(viewModel.currentTab == title ? .purple : .gray)
            .frame(maxWidth: .infinity)
        }
    }
}

//struct TabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarButton()
//    }
//}
