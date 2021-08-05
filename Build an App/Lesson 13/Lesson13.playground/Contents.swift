//classes and sub-classes Lesson #13
class Mammal {
    func sleep() {
        print("sleeping")
    }
    func eat() {
        print("eating")
    }
}
let someMammal = Mammal()
someMammal.sleep()
someMammal.eat()

class Bear : Mammal {
    
    var furColor=""
    
    func hibernate() {
        print("hibernating")
    }
    override func eat(){
        print("eating fish")
    }
}

let aBear = Bear()
aBear.eat()
aBear.sleep()
aBear.hibernate()

class PolarBear : Bear {
    
    override init() {
        super.init()
        furColor = "white"
    }
    override func eat() {
        super.eat()
        print("Also eating seals")
    }
}
let mrPolarBear = PolarBear()
print(mrPolarBear.furColor)
mrPolarBear.eat()
mrPolarBear.hibernate()
mrPolarBear.eat()

class GrizzlyBear : Bear {
    override init() {
        super.init()
        furColor = "brown"
    }
    override func eat() {
        print("Also eating berries and seeds")
    }
}
let mrGrizzly = GrizzlyBear()
print(mrGrizzly.furColor)
mrGrizzly.eat()
mrGrizzly.hibernate()
mrGrizzly.sleep()

