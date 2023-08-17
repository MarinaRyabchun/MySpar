//
//  StoriesView.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct StoriesView: View {
    let model = Stories.mockStories()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(model.stories, id: \.id) { story in
                    StoryRow(model: story)
                }
                .padding(.trailing, 10)
            }
        }
        .padding(.leading, 16)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
