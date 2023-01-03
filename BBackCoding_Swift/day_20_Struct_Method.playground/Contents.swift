import UIKit

//Struct-method

struct Frind {
    var age: Int
    var name: String
    
    func sayHello() -> String {
        print(#function)
        
        return "저는 \(age)살 \(name) 입니다."
    }
}


var myFrind = Frind(age: 43, name: "정영모")
var result = myFrind.sayHello()

print("\(result)")
