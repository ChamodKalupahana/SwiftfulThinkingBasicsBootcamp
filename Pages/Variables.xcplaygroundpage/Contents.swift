import Foundation


// always try to reduce ambiguity
// using var for variables that don't really change is bad practice!
let someConstant : Bool = true

var someVariable : Bool = false

var myNumber : Double = 1.1234

myNumber = 2

print(myNumber)

// if statments

var userIsPremium : Bool = true

if userIsPremium == true {
    print("1 - user is premuium")
} else {
    print("1.1 -- user is not preumum")
}

// shorthand

if userIsPremium {
    print("1 - user is premium")
}

if !userIsPremium {
    print("2 - user is not preimum")
}
