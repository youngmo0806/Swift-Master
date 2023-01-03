import UIKit

class MyFriend {
    var name: String
    
    init(_ name: String = "이름없음") {
        self.name = name
        print("init() MyFriend 가 메모리에 올라갔다. [\(self.name)]" )
    }
    
    deinit {
        print("deinit() 메모리에서 사라짐. [\(self.name)] ")
    }
    
    // deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIME = 5
    
    static var instancesOfSelf = [MyFriend]()
    
    class func destorySelf(object: MyFriend) {
        instancesOfSelf = instancesOfSelf.filter({ (aFriend: MyFriend) in
            aFriend !== object
        })
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        
        if calledTimes > MAX_TIME {
            MyFriend.destorySelf(object: self)
        }
    }
}

//let myFriend = MyFriend("정영모")
//let aFriend = MyFriend()

weak var aFriendToBeDestoryied = MyFriend("개발하는 개발자")


if aFriendToBeDestoryied != nil {
    aFriendToBeDestoryied?.call()
}else{
    print("메모리에 없습니다.")
}
