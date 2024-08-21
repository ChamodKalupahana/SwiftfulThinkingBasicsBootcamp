import Foundation

struct EmployeeModel : EmployeeHasAName {
    let title : String
    let name : String
}

protocol EmployeeHasAName {
    let name : String
}

// protocol is a set of rules that a struct has to conform to


print("fad")
