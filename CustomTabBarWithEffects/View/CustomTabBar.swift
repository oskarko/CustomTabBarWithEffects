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
            HomeView()
                .environmentObject(viewModel)
                .tag("Home")
            
            PurchasedView()
                .environmentObject(viewModel)
                .tag("Purchased")
            
            SettingsView()
                .environmentObject(viewModel)
                .tag("Settings")
        }
        .overlay(
            
            HStack {
                TabBarButton(title: "Home", image: "house", animation: animation)
                TabBarButton(title: "Purchased", image: "purchased.circle", animation: animation)
                TabBarButton(title: "Settings", image: "gear", animation: animation)
            } // HStack
            .environmentObject(viewModel)
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.blue) //, in: Capsule())
            .padding(.horizontal, 20)
            .padding(.bottom, 8)
            .shadow(color: .black.opacity(0.09), radius: 5, x: 5, y: 5)
            .shadow(color: .black.opacity(0.09), radius: 5, x: -5, y: 0)
            
            , alignment: .bottom
        )
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
