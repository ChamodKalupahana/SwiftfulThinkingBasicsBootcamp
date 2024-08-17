import Foundation

var myBool : Bool = false

var myOtherBool : Bool? = nil

print(myOtherBool)
myOtherBool = true
print(myOtherBool)

// nil coalescing operator

let newValue : Bool? = myOtherBool

// "the value of myOtherBool if there is one, otherwise false"
let newValue2 : Bool = myOtherBool ?? false

print("New value 2: \(newValue2.description)")

var myString : String? = nil

let newString = myString ?? "some default value"

//----------------------


var userIsPremium : Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    userIsPremium
}


func checkIfUserIsPremium2() -> Bool? {
    userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium3()

func checkIfUserIsPremium3() -> Bool {
    
    // if there is a value in userIsPremium, assign to newValue
    if let newValue = userIsPremium {
        return newValue
    }
    
    return false
}

func checkIfUserIsPremium5() -> Bool {
    
    // no need to rename with this
    if let userIsPremium {
        return userIsPremium
    }
    
    return false
}

// Guard

func checkIfUserIsPremium6() -> Bool {
    // Make sure there is a value in userIsPremium
    // If there is, let newVaue be the vaule and continue
    // otherwise, return out
    guard let newValue = userIsPremium else {
        return false
    }
    
    return newValue
}

//--------------------------

var userIsNew : Bool? = true
var userDidCompleteOnboarding : Bool? = false
var userFavouriteMovie : String? = nil

func checkIfUserIsSetup() -> Bool {
    
    if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favouriteMovie = userFavouriteMovie {
        // userIsNew == Bool AND and so on...
        
        return getUserStatus(userIsNew: isNew,
                             userDidCompleteOnboarding: didCompleteOnboarding,
                             userFavouriteMovie: favouriteMovie
        )
    } else {
        return false
    }
}

func checkIfUserIsSetUp2() -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavouriteMovie else {
        return false
    }
    
    return getUserStatus(userIsNew: userIsNew,
                         userDidCompleteOnboarding: userDidCompleteOnboarding,
                         userFavouriteMovie: userFavouriteMovie
    )
    
}

func getUserStatus(userIsNew : Bool, userDidCompleteOnboarding: Bool, userFavouriteMovie : String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false
}



func checkIfUserIsSetup3() -> Bool {
    
    if let userIsNew {
        // userIsnew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavouriteMovie {
                // userFavouriteMovei == Bool
                return getUserStatus(userIsNew: userIsNew,
                                     userDidCompleteOnboarding: userDidCompleteOnboarding,
                                     userFavouriteMovie: userFavouriteMovie
                )
            } else {
                // userFavouriteMovei == nil
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
}


// this is much better than the if let statements
func checkIfUserIsSetup4() -> Bool {
    
    guard let userIsNew else {
        // userIsnew
        return false
    }
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    
    guard let userFavouriteMovie else {
        // userFavouriteMovie == nil
        return false
    }
    
    return getUserStatus(userIsNew: userIsNew,
                         userDidCompleteOnboarding: userDidCompleteOnboarding,
                         userFavouriteMovie: userFavouriteMovie
    )
    
    }


// Optional chaining

func getUsername() -> String? {
    return "cham"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username : String? = getUsername()
    
    // i will get the count if the username is not nil
    let count : Int? = username?.count
    
    let title: String = getTitle()
    
    // i will always get the count (since title is not optional)
    let count2 = title.count
    
    
    // if username has a value AND first first character in username has a value then return lowercase
    // this is optional chaining
    let firstCharacterLowercased = username?.first?.isLowercase ?? false
    
    // explicitly unwrap optional
    // I will get the count because I know 100% username is not nil
    // This will crash your app if username is nil!
    let count3 : Int = username!.count
    

}


getUserData()
