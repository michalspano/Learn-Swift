import UIKit

class SpaceShip{
    // Declared class SpaceShip
    
    var fuelLevel:Int = 50
    
    func liftOff() {
        
        //Decrement fuel
        fuelLevel -=  50
        
        //Print Statements
        print("We have lift off!")
        print(fuelLevel)
        print("Current fuel at a level \(fuelLevel).")
    }
    func addFuel(fuel:Int) {
        
        //Increase fuel
        fuelLevel += fuel
        
        //Print Statements
        print("Fuel added.")
        print("Current fuel level \(fuelLevel)")
    }
    func thrus() {
        
        //Decrement fuel
        fuelLevel -= 15
        
        //Print Statements
        print("Rocket is thursting.")
        print("Current fuel level \(fuelLevel)")
        
    }
    func cruise() {
        
        //Decrement fuel
        fuelLevel -= 5
        
        //Print Statements
        print("Rocket is crusing.")
        print("Current fuel level \(fuelLevel)")
    }
}
var mySpaceship:SpaceShip = SpaceShip()
mySpaceship.addFuel(fuel: 50)
mySpaceship.liftOff()
mySpaceship.thrus()
mySpaceship.cruise()
