import Foundation

// Arrays, Sets

var myTitle : String = "Hello world"
var myTitle2 : String = "Hello world!!"

// Tuple

func doSomething(value : (title1 : String, title2 : String)) {
    
}

doSomething(value: (myTitle2 ,myTitle2))

// custom data model
// really long for lots of data values

struct TitleModel {
    let title1 : String
    let title2 : String
}

func doSomething(value: TitleModel) {
    
}

doSomething(value: TitleModel(title1: myTitle, title2: myTitle2))

//------------------

let apple = "Apple"
let orange = "Orange"

let fruits1 : [String] = ["Apple", "Orange"]
let fruits2 : [String] = [apple, orange]
let fruits3 : Array<String> = [apple, orange]



func doSomething(value: [String]) {
    
}

var fruitsArray : [String] = ["Apple", "Orange", "Banana", "Mango"]

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

fruitsArray = fruitsArray + ["Pineapple"]
fruitsArray.append("Hehe")

// Array is a object in the stack

fruitsArray[2]

let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last

if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}

fruitsArray.insert("Watermelon", at: 2)
fruitsArray.remove(at: 3)

//fruitsArray.removeAll()

struct ProductModel {
    let title : String
    let price : Int
}

var myProducts = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 50),
    ProductModel(title: "Product 3", price: 500)
]

var fruitsSet : Set<String> = ["Apple", "Apple"]

print(fruitsSet)
