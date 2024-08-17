import Foundation

// Structs are fast!
// Structs are stored in the Stack
// Objects in the Stack are Value types
// Value types are copied & mutated

struct Quiz {
    let title : String
    let dateCreated : Date
    let isPremium : Bool?
    
    
    // Structs have an implicit init
    // no need to write this out, swift does it automatically for us
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    init(title: String, dateCreated: Date?, isPremium : Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
        
    
    }
}

let myObject : String = "Hello world!"

//let myQuiz : Quiz = Quiz(title: "Quiz", dateCreated : .now)
//let myQuiz : Quiz = Quiz(title: "hello world")
//let myQuiz : Quiz = Quiz(title: "hello world", isPremium : nil)

let myQuiz : Quiz = Quiz(title: "Quiz", dateCreated: nil, isPremium: false)

print(myQuiz.title)

// but we didn't need to define an init?


