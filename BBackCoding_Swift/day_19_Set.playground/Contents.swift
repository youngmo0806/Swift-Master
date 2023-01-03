import UIKit

//Set.
//중복될수 없다, 고유한 값이어야 한다.


var myNumberSet:Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(4)
myNumberSet.insert(4)

myNumberSet.count
myNumberSet

for item in myNumberSet {
    print("item \(item)")
}

var myBestFriends: [String] = ["무석","영모","성규","대건"]
myBestFriends.contains("성규")



var myFriends: Set<String> = ["무석","영모","성규","대건"]
myFriends.contains("영모")


if let indexToRemove = myFriends.firstIndex(of: "무석") {

    myFriends.remove(at: indexToRemove)
}

myFriends
