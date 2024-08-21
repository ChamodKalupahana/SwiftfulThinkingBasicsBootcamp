import Foundation


struct MovieModel {
    let title : String
    let genre : MovieGenre
    let isFavourite : Bool
    
    // beginner way
    func updateFavouriteStatus(newValue : Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavourite: newValue)
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavourite:false)
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavourite:false)
    private(set) var movie3 = MovieModel(title: "Avenger", genre: .action, isFavourite:false)
    
    func updateMovie3(isFavourite:Bool) {
        movie3.updateFavouriteStatus(newValue: isFavourite)
    }
}

let manager = MovieManager()

//manager.movie3 = manager.movie1.updateFavouriteStatus(newValue: true)
manager.updateMovie3(isFavourite: true)
print(manager.movie3)


// Version 1
// This is too public, bad pratice, should only if this is needed
let movie1 = manager.movie1
movie1.updateFavouriteStatus(newValue: true)

// Version 2
// This is too get or set the value, should only use for things needed within the function
//let movie2 = manager.movie2

// Version 3
// Best practice, we can access the data from outside but can't set
let movie3 = manager.movie3
//manager.movie3 = manager.updateMovie3(isFavourite: true)


// rule of thumb: we should keep everything as private as possible
// this makes your code easy to read and easy to scale!
