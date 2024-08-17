import Foundation

/*
 
 Using an app, we create (init) and destroy objects (deinit)
 
 Swift has Automatic Reference Counting (ARC)
 
 A live count of the number of the objects in memory
 
 The more objects in memory, the slower the app performs
 We want to keep the ARC count as low as possible
 
 And destroy them as soon as we no longer need them
 
 For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it (i.e  when the user clicks a button to segue to screen 2, we may wan to deallocate screen 1)
 
 Ther are 2 types of memory
 Stack & Heap
 Only objects in the Heap are counting towards ARC
 
 Objects in the Stack
 String, Bool, Int, most basic types
 New: Structs, Enum
 
 Objects in the Heap
 Functions
 New: Classes, Actors
 
 iPhone is a muti-threaded environment
 There are mutiple threads or "engines" running simultanesouly
 Each thread has a Stack
 But there is only 1 Heap for all threads
 
 Therefore:
 Stack is faster, lower memory footprint
 Heap is slower, higher memory footprint
 
 This is because the Heap needs to syncronise across all threads where stacks can act independantly
 
 This is why every single SwiftUI screen is a struct, it's highly performant because it's in the stack and not the heap
 
 Value vs Reference types
 
 Objects in the Stack are "Value" types
 When you edit a Value type, you create a copy of it with new data
 
 Objects in the Heap are "Reference" types
 When you edit a Reference type, you edit the object that you are referencing. This reference is called "pointer" because it points to an object in the Heap (in memory)
 
 Consider mutiple threads, when a thread needs to edit data from another thread, it can copy it over to the new thread and not worry about where it was before
 
 Whereas in the Heap, when we go to edit or move data, we are always pointing to the same location in memory. Whether it's on the 1st, 2nd or 3rd thread, when we move it from thread to thread, we're sharing the pointer to the same object in memory. Even if there are mutiple threads accessing the data
 
 Because objects in the stack are copying and pasting values, there is no risk of threading issues. Whereas, the Heap is shared across threading issues therefore there is a risk of threading issue e.g when mutiple threads accessing the same piece of data at the same time.
 */

struct MyFirstObject {
    let title : String = "Hello world"
}

class MySecondObject {
    let title : String = "Hello world"
}

/*
 Imagine a school and in the school there are classrooms.
 
 Within each classroom, the teacher is going to hand out quizzes
 
 During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and return them back to the teacher
 
 "School" = App
 "Classroom" = Class
 "Quiz" = Struct
 
 In this example, we have a classroom and there are many actions that occur inside the classroom (such as handing out the quiz). In code, we create a class and can perform actions within the class.
 
 In this example, there are many different types of quizzes. The teacher hands out the quizzes and the students take the quizzes take the quizzes and return to the teacher. In code, we create many structs and pass them around the app with ease.
 
 It is much eaiser to pass around a quiz than a classroom
 
 Note:
 Metaphor is not perfect
 Technically quiz can be a class
 
 A struct is a small piece of data (a string or struct) that we're going to pass around our app. Whereas, we can still edit classes but we want to use classes for things that are more stable in our app
 
 We want to use a class for things like:
 "Manager", "DataService", "Service", "Factory", "ViewModel"
 Objects that we create and want to perform actions inside
 
 We want to use a struct for things like:
 Data models
 Objects that we want to pass around our app
 */
