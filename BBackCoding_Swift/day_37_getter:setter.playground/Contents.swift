import UIKit

//Swift getter,setter

class Friend {
    var name: String
    var age: Int
    
    var detailInfo: String = ""
    
    
    var info: String {
        get {
            return "내 친구 \(name)의 나이는 \(age) 입니다."
        }
        
        set{
            detailInfo = "info에서 설정됨 " + newValue
        }
    }
    
    
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
}



let myFriend = Friend("정영모",20)

myFriend.info

myFriend.info = "호롤롤롤"

myFriend.detailInfo
