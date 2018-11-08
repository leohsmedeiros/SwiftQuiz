//: Playground - noun: a place where people can play

import UIKit

class Person {
    
    var name: String
    var age: Int
    private static var agePattern: Int = 5
    
    init(_ name:String, _ age:Int) {
        self.name = name
        self.age = age
    }
    
    class func getAgeMinusOne () -> Int {
        return agePattern - 1
    }
    
}

var fabio = Person.init("fabio", 35)
print(fabio.name)
print(Person.getAgeMinusOne())

/**********************************************************/

//Inherit

class Animal {
    
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound () {
        print ("...")
    }
}

class Dog : Animal {
    func run() {
        print("O cachorro está correndo")
    }
    override func emiteSound () {
        print ("au au au")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    func fly() {
        print(canFly ? "O passaro está voando" : "O passaro não está voando")
    }
    
    // Designated Initializer
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    // Convenience Initializer
    convenience init (color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    override func emiteSound () {
        print ("fi fi fi")
    }
    
}

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Poodle")
let zeCarioca = Bird(color: "verde", gender: "M", breed: "Papagaio", canFly: true)

billy.emiteSound()
zeCarioca.emiteSound()

zeCarioca.fly()

let maleBird = Bird(color: "Black", breed: "Sabiá")

//Type Casting

let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "PitBull"),
    Dog(color: "Branco", gender: "F", breed: "Poodle"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]

print("-------------------------")
for animal in animals {
    animal.emiteSound()

    switch animal {
        case let dog as Dog:
            dog.run()
        case let bird as Bird:
            bird.fly()
        default:
            break
    }
    
//    if let bird = animal as? Bird {
//        print(animal.breed)
//        bird.fly()
//    }
}


/**********************************************************/

//Extensions


let name = "Leonardo Medeiros"

extension String {
    var vowels: [Character] {
        var list: [Character] = []
        for character in characters {
            switch String(character).lowercased() {
                case "a", "e", "i", "o", "u":
                    list.append(character)
                default:
                    break
            }
        }
        return list
    }
    var consonant: [Character] {
        var list: [Character] = []
        for character in characters {
            switch String(character).lowercased() {
            case "a", "e", "i", "o", "u":
                break
            default:
                list.append(character)
            }
        }
        return list
    }
    
}

print(name.vowels)
print(name.consonant)

