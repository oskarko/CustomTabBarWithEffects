//
//  CustomTabBar.swift
//  CustomTabBarWithEffects
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2021 Oscar R. Garrucho. All rights reserved.
//

import SwiftUI

struct CustomTabBar: View {
    
    // MARK: - Properties
    
    @StateObject var viewModel = TabViewModel()
    @Namespace var animation
    
    // MARK: - Body
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabView(selection: $viewModel.currentTab) {
            Text("Home")
                .tag("Home")
            
            Text("Purchased")
                .tag("Purchased")
            
            Text("Settings")
                .tag("Settings")
        }
        .overlay(
            
            HStack {
                TabBarButton(title: "Home", image: "house", animation: animation)
                TabBarButton(title: "Purchased", image: "purchased.circle", animation: animation)
                TabBarButton(title: "Settings", image: "gear", animation: animation)
            } // HStack
            .environmentObject(viewModel)
            
            , alignment: .bottom
        )
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
