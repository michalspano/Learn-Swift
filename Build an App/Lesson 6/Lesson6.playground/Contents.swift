import UIKit

var str = "Hello, playground"

// Function declaration
func sayHello() -> Void {
    print("Hello!")
}
sayHello()

// Functio with parameter
func sayHelloTo(_ name:String, _ age:Int){
    print("Hello \(name), you are \(age) years old.")
    
}
sayHelloTo("Michal", 18)

//New function with return value
func addFourTo(x:Int) -> Int {
    let sum = x + 4
    return sum
}
var result = addFourTo(x: 10)
print(result)


