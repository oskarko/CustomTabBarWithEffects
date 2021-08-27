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
                    .frame(height: 18)
                
                Text(title)
                    .font(.caption.bold())
            } // VStack
            .foregroundColor(viewModel.currentTab == title ? .purple : .gray)
            .frame(maxWidth: .infinity)
            .overlay(
                ZStack {
                    if viewModel.currentTab == title {
                        TabIndicator()
                            .fill(.linearGradient(
                                    .init(colors: [
                                        Color.purple.opacity(0.2),
                                        Color.purple.opacity(0.1),
                                        Color.clear
                                    ]),
                                    startPoint: .top,
                                    endPoint: .bottom))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                            .padding(.top, -10)
                            .padding(.horizontal, 8)
                    }
                } // ZStack
            )
        }
    }
}

//struct TabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarButton()
//    }
//}

struct TabIndicator: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width - 10, y: rect.height))
            path.addLine(to: CGPoint(x: 10, y: rect.height))
        }
    }
}
