import UIKit


//프로토콜은 약속이고,
// 뭔가를 강제
protocol Talking {
    var saying: String { get set}
    func sayHi()
}


class BestTalk : Talking {
    var saying: String = "BestTalk의 saying"
    
    func sayHi() {
        print("BestTalk의 sayHi 함수")
    }
}

class OldTalk: Talking {
    var saying: String = "OldTalk의 saying"
    
    func sayHi() {
        print("OldTalk의 sayHi 함수")
    }
}




class Friend{
    var talkProvider: Talking
    var saying: String {
        get {
            talkProvider.saying
        }
    }
    
    init(_ talkProvider: Talking) {
        self.talkProvider = talkProvider
    }
    
    func setTalkProvider(_ newProvider: Talking){
        self.talkProvider = newProvider
    }
    
    func sayHi() {
        talkProvider.sayHi()
    }
}


let myBestFriend = Friend(BestTalk())

myBestFriend.sayHi()
myBestFriend.saying

print("")
let myOldFriend = Friend(OldTalk())

myOldFriend.sayHi()
myOldFriend.saying


myOldFriend.setTalkProvider(BestTalk())

myOldFriend.sayHi()
myOldFriend.saying
