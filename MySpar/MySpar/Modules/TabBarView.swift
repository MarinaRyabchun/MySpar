//
//  TabView.swift
//  MySpar
//
//  Created by Марина Рябчун on 17.08.2023.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    TabItemView(imageName: Constants.Image.house,
                                title: "Главная")
                }
                .tag(0)
            HomeView()
                .tabItem {
                    TabItemView(imageName: Constants.Image.catalog,
                                title: "Каталог")
                }
                .tag(1)
            HomeView()
                .tabItem {
                    TabItemView(imageName: Constants.Image.cart,
                                title: "Корзина")
                }
                .tag(2)
            HomeView()
                .tabItem {
                    TabItemView(imageName: Constants.Image.profile,
                                title: "Профиль")
                }
                .tag(3)
        }
        .accentColor(Constants.Colors.accent1)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

