import UIKit


//lazy - 메모리에 바로 올리지 않고 실제 사용할때 올린다

struct Pet {
    init(){
        print("Pet이 생성되었다.")
    }
}

struct Friend {
    var name: String
    
//    var pet: Pet = Pet()
    lazy var pet: Pet = Pet()
    
    init(_ name: String){
        self.name = name
        print("Friend 가 생성됨")
    }
}

var myFriend = Friend("정영모")

myFriend.pet
