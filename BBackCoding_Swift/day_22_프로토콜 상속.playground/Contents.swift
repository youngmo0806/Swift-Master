import UIKit


//protocol 상속

protocol Naming {
    var name: String { get set }
    func getName() -> String
}

protocol Aging {
    var age: Int { get set }
}

protocol UserNotifiable: Naming, Aging {
    
}


class MyBestFriend: UserNotifiable {
    var name: String
    
    func getName() -> String {
        return ""
    }
    
    var age: Int
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
}

struct MyFriend: UserNotifiable {
    var name: String
    
    func getName() -> String {
        return ""
    }
    
    var age: Int
    
    
}
