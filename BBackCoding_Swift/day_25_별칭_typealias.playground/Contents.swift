import UIKit

//별칭,별명 ~게 사용 하겠다.

protocol Naming {
    func getName() -> String
}

protocol Ageing {
    func getAge() -> Int
}



typealias Friendable = Naming & Ageing

typealias FullNaming = Naming

//sample
struct Friend: Friendable {
    var name: String
    var age: Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}


//자료형 까지도 별칭을 사용할수 있다
typealias FrindName = String
var friendname: FrindName = "테스트스트링"


//closure에도 먹일수 있네
typealias StringBlock = (String) -> Void

func sayHi(completion : StringBlock) {
    print("sayHi fucn called")
    completion("test")
}

sayHi { str in
    print("sayHi closure call 해보았다 \(str)")
}

/////////////////////////////////////////////////////////////////////

typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    
    var myType = MyType.BIRD
}


var myClass = MyClass()

myClass.myType = MyType.DOG

print("myClass.myType", myClass.myType)



