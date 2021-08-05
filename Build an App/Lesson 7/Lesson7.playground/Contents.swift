import UIKit

class myClass {
    func displayName(_ name:String, _ age:Int){
        print("\(name), you are \(age) years old.")
        
    }
}
var display:myClass = myClass()
print(display.displayName("Michal", 16))
