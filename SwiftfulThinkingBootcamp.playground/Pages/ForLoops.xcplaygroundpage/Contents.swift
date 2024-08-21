import Foundation

for x in 0..<100 {
    print(x)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta"]

for item in myArray {
    print(myArray)
}


struct LessonModel {
    let title : String
    let isFavourite : Bool
}

let allLessons = [
    LessonModel(title: "Lesson 1", isFavourite: true),
    LessonModel(title: "Lesson 2", isFavourite: true),
]

for (index, lesson) in allLessons.enumerated() {
    
    if index == 1 {
//        break
        continue
    }
    print("index: \(index) || lesson : \(lesson)")
}


