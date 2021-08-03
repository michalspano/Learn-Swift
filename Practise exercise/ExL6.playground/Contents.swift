import UIKit

func getTdotalWithTax(_ subtotal:Double, _ tax:Double) -> Double {
    return subtotal*tax
}
var output = getTdotalWithTax(200, 1.13)
print(output)

