import UIKit


//protocol : 약속
// **ing
// **able

//프로토콜
protocol Naming {
    //우리는 이런 변수를 가지고 있을 겁니다 라고 약속
    var name: String { get set }
    
    //우리는 이런 메소드를 가지고 있을겁니다 라고 약속
    func getName() -> String
}


//프로토콜을 준수한다.
struct Frind: Naming {
    var name: String
    
    func getName() -> String {
        return "내 친구 " + self.name
    }
}

var myFriend = Frind(name: "정영모")

myFriend.name
myFriend.getName()
