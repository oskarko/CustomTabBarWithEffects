//
//  PurchasedView.swift
//  CustomTabBarWithEffects
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2021 Oscar R. Garrucho. All rights reserved.
//

import SwiftUI

struct PurchasedView: View {
    // MARK: - Properties
    
    @EnvironmentObject var viewModel: TabViewModel
    
    // MARK: - Body
    
    var body: some View {
        Text("Purchased")
    }
}

struct PurchasedView_Previews: PreviewProvider {
    static var previews: some View {
        PurchasedView()
    }
}
