//
//  StoriesModel.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import Foundation

struct Stories {
    let stories: [Story]
    
    static func mockStories() -> Stories {
        return Stories(stories: [
            Story(imageName: "privilege", label: "Привилегии \"Мой SPAR\""),
            Story(imageName: "socialNetwork", label: "Мы в соцсетях"),
            Story(imageName: "cocktail", label: "3 рецепта коктейлей"),
            Story(imageName: "tasting", label: "Дегустации в SPAR"),
            Story(imageName: "novelties", label: "Новинки недели")
        ])
    }
}

struct Story: Identifiable {
    let id = UUID()
    let imageName: String
    let label: String
    
    init(imageName: String, label: String) {
        self.imageName = imageName
        self.label = label
    }
    
    static func mockStory() -> Story {
        Story(imageName: "privilege", label: "Привилегии \"Мой SPAR\"")
    }
}

