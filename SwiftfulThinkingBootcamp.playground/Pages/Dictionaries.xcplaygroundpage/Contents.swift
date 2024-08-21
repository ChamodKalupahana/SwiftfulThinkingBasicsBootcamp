import Foundation

var myFirstDictionary : [String : Bool] = [
    "Apple" : true,
    "Orange" : false]


let item = myFirstDictionary["Orange"]

print(item)


var mySecondDictionary : [Int : Bool] = [
    10 : true,
    12 : false]

let item2 = mySecondDictionary[10]

mySecondDictionary[10] = false


// accessing items in a dictionary is very fast, don't need to make it safe unlike arrays
// arrays are common tho becasue items are ordered which is useful

struct PostModel {
    let id : String
    let title : String
    let likeCount : Int
}

var postArray: [PostModel] = [
    PostModel(id: "avs", title: "dasdsa", likeCount: 32),
    PostModel(id: "avsads", title: "dasdsadasd", likeCount: 322)]

var postDict : [String : PostModel] = [
    "hehe" : PostModel(id: "avs", title: "dasdsa", likeCount: 32)]
