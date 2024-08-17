import Foundation

func myFirstFunction() {
    print("My first function called")
    mySecondFunction()
}


func mySecondFunction() {
    print("My second function called")
}


myFirstFunction()


func getUserName() -> String {
    let username : String = "Nick"
    return username
}

let name : String = getUserName()

// Can't call the constant inside the function
// Good practice is making variables as private as possible
//print(username)

// ------------------------------------


func showFirstScreen() {
    var userDidCompleteOnBoarding : Bool = false
    var userProfileIsCreated : Bool = true
    
    let status = checkUserStatus(userDidCompleteOnBoarding: userDidCompleteOnBoarding, userProfileIsCreated : userProfileIsCreated)
    
    if status == true {
        print("Show Home Screen")
    } else {
        print("Show onboarding screen")
    }
}

func checkUserStatus(userDidCompleteOnBoarding : Bool, userProfileIsCreated : Bool) -> Bool {
    if userDidCompleteOnBoarding && userProfileIsCreated {
        return true
    } else {
        return false
    }
}

showFirstScreen()

//-----------------------------


doSomething()

func doSomething() -> String {
    var title : String = "Avengers"
    
    // If title is equal to avergers
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
}

checkIfTitleIsAvengers()

func checkIfTitleIsAvengers() -> Bool {
    var title : String = "Avengers"
    
    // Make sure title is avengers then carry on without a closure
    guard title == "Avengers" else {
        print("Not Marvel")
        return false
    }
    
    return true
}

// calculated variables are basically functions

let number1 = 5
let number2 = 8

func calculateNumber() -> Int {
    return number1 + number2
}

func calculateNumbers(number1 : Int, number2 : Int) -> Int {
    return number1 + number2
}

let result1 = calculateNumber()
let result2 = calculateNumbers(number1: number1, number2: number2)


var calculatedNumber(number1 : Int, number2 : Int) : Int {
    return number1 + number2
}

print(calculatedNumber)
