import Foundation

// Classes are slow

// Classes are stored in the Heap (memory)
// Reference types point to an object in memory and update the object in memory

// All the datat needed for some screen
class ScreenViewModel {
    let title : String
    private(set) var showButton : Bool
    
    // class doesn't have implict init unlike Structs
    
    init(title: String, showButton : Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        //  runs as the object is being removed from memory
        // Structs do NOT have deinit
    }
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue : Bool) {
        showButton = newValue
    }
}

var viewModel : ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton : true)
//viewModel.showButton = true

viewModel.hideButton()
