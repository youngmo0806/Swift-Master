import UIKit

//파이널 클래스
// final -> 상속을 막는방법

//final class Friend {
//    var name: String
//
//    init(_ name: String){
//        self.name = name
//    }
//}

class Friend {
    var name: String
    
    init(_ name: String){
        self.name = name
    }
}

class BestFriend: Friend {
    
    override init(_ name: String){
        super.init("베스트프렌즈 : \(name)")
    }
}

let myFriend = Friend("정차장")
let myBestFriend = BestFriend("정혜은")
