import UIKit

//상속

class Friend {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("안녕 난 \(self.name) 라고해!!!!")
    }
}



class BestFriend: Friend {
    
    //override로 부모의 메소드를 가져왔다.
    override init(_ name: String) {
        // super 로 부모의 메소드 사용
        super.init("오잉" + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
    
}


let myFriend = Friend("정영모")

myFriend.sayHi()

let myBestFriend = BestFriend("정혜은")

myBestFriend.sayHi()

myBestFriend.name
myFriend.name
