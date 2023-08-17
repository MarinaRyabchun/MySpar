//
//  StoriesRow.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct StoryRow: View {
    
    var model: Story
    let contentSize: CGFloat = 70
    let imageSize: CGFloat = 68
    
    var body: some View {
        VStack() {
            ZStack() {
                Circle()
                    .frame(width: contentSize, height: contentSize)
                    .foregroundColor(Constants.Colors.accent1)
                Circle()
                    .frame(width: imageSize, height: imageSize)
                    .foregroundColor(.white)
                Image(model.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: imageSize, height: imageSize, alignment: .center)
                    .clipShape(Circle())
            }
            Text(model.label)
                .lineLimit(2)
                //.font(.caption)
                .font(.system(size: 11))
                .multilineTextAlignment(.center)
        }
        .frame(width: contentSize)
    }
}

struct StoriesRow_Previews: PreviewProvider {
    static var previews: some View {
        StoryRow(model: Story.mockStory())
    }
}
