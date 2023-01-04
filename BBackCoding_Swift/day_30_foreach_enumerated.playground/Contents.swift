import UIKit

let myFriendsArray: [String] = ["영모","혜은","성규","상희","대건","은주","무석","경미"]

var friendWithIndex: [String] = []

//myFriendsArray.forEach { idx in
//    print(idx)
//}


for (index, friend) in myFriendsArray.enumerated() {
    print("\(index):\(friend)")
    
    if index == 4 {
        friendWithIndex.append(friend)
    }
}

