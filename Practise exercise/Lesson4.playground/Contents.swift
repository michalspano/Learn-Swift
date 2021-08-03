import UIKit

print("This is a simple calculator!")

var strOperator:String = "+"

var num1:Int = 200
var num2:Int = 20

var result:Int = 0

switch strOperator {
case "+":
    result = num1 + num2
    print(result)
case "-":
    result = num1 - num2
    print(result)
case "*":
    result = num1 * num2
    print(result)
case "/":
    result = num1 / num2
    print(result)
default:
    print("Operator does not exist")
}
        
