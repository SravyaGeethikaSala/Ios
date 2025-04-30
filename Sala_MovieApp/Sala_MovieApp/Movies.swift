//
//  Movies.swift
//  Sala_MovieApp
//
//  Created by Sravya Geethika Sala on 4/27/25.
//

import Foundation
struct Movies {
    let genre: String
    let list_Array: [MovieList]
}

struct MovieList {
    let movieName: String
    let movieImage: String
    let movieInfo: String
}

