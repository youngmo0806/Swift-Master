import UIKit

//프로토콜에서 제네릭 타입을 사용하고 싶으면 ssociatedtype 을 사용하면 된다
protocol PetHaving {
    associatedtype T
    
    var pets: [T] { get set}
    mutating func getNetPet(_ netPet: T)
}

extension PetHaving {
    mutating func getNetPet(_ netPet: T){
        self.pets.append(netPet)
    }
    
}

enum Animal {
    case cat, dog, bird
}


struct Friend: PetHaving {
    var pets: [Animal] = []
}

struct Family: PetHaving {
    var pets: [String] = []
}


var myFriend = Friend()
myFriend.getNetPet(Animal.bird)
myFriend.getNetPet(Animal.cat)
myFriend.getNetPet(Animal.dog)

myFriend.pets

var myFamily = Family()
myFamily.getNetPet("개")

myFamily
