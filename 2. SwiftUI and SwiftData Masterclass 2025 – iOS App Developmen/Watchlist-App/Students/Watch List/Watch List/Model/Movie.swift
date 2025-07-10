//
//  Movie.swift
//  Watch List
//
//  Created by 진아현 on 6/22/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var genre: Genre
    
    init(title: String, genre: Genre) {
        self.title = title
        self.genre = genre
    }
}

extension Movie {
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Movie.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        container.mainContext.insert(Movie(title: "John Wick", genre: Genre(rawValue: 1)!))
        container.mainContext.insert(Movie(title: "Groundhog Day", genre: Genre(rawValue: 2)!))
        container.mainContext.insert(Movie(title: "Toy Story", genre: Genre(rawValue: 3)!))
        container.mainContext.insert(Movie(title: "Blade Runner", genre: Genre(rawValue: 4)!))
        container.mainContext.insert(Movie(title: "Lord of the Rings", genre: Genre(rawValue: 5)!))
        container.mainContext.insert(Movie(title: "Magnificent Seven", genre: Genre(rawValue: 6)!))
        container.mainContext.insert(Movie(title: "The Revenant", genre: Genre(rawValue: 7)!))
        container.mainContext.insert(Movie(title: "Dirty Dancing", genre: Genre(rawValue: 8)!))
        
        return container
    }
}
