import UIKit


//Struct mutating

class Friend {
    var name: String
    
    func changeName(newName: String) {
        self.name = "이름이 바뀜 이걸로 -> \(newName)"
    }
    
    init(_ name: String) {
        self.name = name
    }
}

var myFriend = Friend("정영모")

myFriend.name

myFriend.changeName(newName: "정혜은")

myFriend.name







//Struct 의 멤버 변수를 변경하려면 에러가 나기 때문에 (struct 는 값타입이기 때문)
//mutating을 붙여주면 가능하다
struct BestFriend {
    var name: String
    
    mutating func changeName(newName: String) {
        self.name = "이름이 바뀜 이걸로 -> \(newName)"
    }

//    init(_ name: String) {
//        self.name = name
//    }
}

var myBestFriend = BestFriend(name: "개똥이")
myBestFriend.changeName(newName: "소똥이")

myBestFriend.name
