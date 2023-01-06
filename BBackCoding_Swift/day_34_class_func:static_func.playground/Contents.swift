import UIKit

//클래스 메소드

class Friend {
    func sayHi() {
        print("Friend:<func>")
    }
    
    //인스턴스 화를 하지 않고 바로 콜할수 있다
    // Friend.sayBye()
    class func sayBye() {
        print("Friend:<class func>")
    }
    
    //인스턴스 화를 하지 않고 바로 콜할수 있다
    // Friend.sayBye()
    // final class 와 같다, 상속을 못하게 막는다. override 가 안된다. 하단 sayhoho()를 보세요
    static func sayhoho() {
        print("Friend:<static func>")
    }
}

class BestFriend: Friend {
    class override func sayBye() {
        super.sayBye()//부모의 함수를 실행 하고 싶으면 super로 하면된다.
        print("BestFriend:<class override func>")
    }


    func sayhoho() {
        print("BestFriend:<func>")
    }
}

let myFriend = Friend()
myFriend.sayHi()

Friend.sayBye()

Friend.sayhoho()

BestFriend.sayBye()

BestFriend.sayhoho()


