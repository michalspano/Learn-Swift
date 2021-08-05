import UIKit

var a = ["bird", "turle", "cat"]
var b = [String]() //empty list

//asign
a.append("dog")
print(a[3])
//insert
a.insert("giraffe", at: 0)
//insert
a[0] = "sloth"
print(a[0])
//remove
a.remove(at: 1)
//count
print(a.count)

