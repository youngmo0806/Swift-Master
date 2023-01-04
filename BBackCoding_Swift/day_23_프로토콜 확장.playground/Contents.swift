import UIKit


//프로토콜의 확장


/// 프로토콜은 선언만하고, 구현은 못하는데,
/// extension 을 이용하면 함수를 구현해 놓을수 있다.
protocol Naming {
    var lastName: String { get set }
    var firstName: String { get set }
    
    func getName() -> String
}


extension Naming {
    func getFullName() -> String {
        return self.firstName + "" + self.lastName
    }
}


struct Friend: Naming{
    var lastName: String
    
    var firstName: String
    
    func getName() -> String {
        return self.lastName
    }
}


let myFriend = Friend(lastName: "youngmo", firstName: "jung")

myFriend.getName()
myFriend.getFullName()
