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
    
    // MARK: - Body
    
    var body: some View {
        TabView(selection: $viewModel.currentTab) {
            
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
