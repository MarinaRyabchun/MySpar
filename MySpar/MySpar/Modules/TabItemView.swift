//
//  TabItemView.swift
//  MySpar
//
//  Created by Марина Рябчун on 17.08.2023.
//

import SwiftUI

struct TabItemView: View {
    var imageName: String
    let title: String
    let imageSize: CGFloat = 40
    
    var body: some View {
        VStack{
            Image(systemName: imageName)
            Text(title)
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(imageName: "house", title: "Home")
    }
}
