//
//  HeaderView.swift
//  MySpar
//
//  Created by Марина Рябчун on 17.08.2023.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray)
                .foregroundColor(.clear)
            HStack {
                Image(Constants.Image.location)
                    .resizable()
                    .frame(width: 15, height: 15)
                TextField("Москва, Москва и Московская область", text: $searchText)
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 10)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 37)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        @State var searchText = "Москва, Москва и Московская область"
        SearchView(searchText: $searchText)
    }
}
