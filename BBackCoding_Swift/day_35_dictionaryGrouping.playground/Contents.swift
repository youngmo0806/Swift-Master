import UIKit

//딕셔너리 그룹핑

enum FriendType {
    case normal
    case best
    
}

struct Friend {
    var name: String
    var type: FriendType
}

var friendList = [
    Friend(name: "정영모", type: .best),
    Friend(name: "정혜은", type: .normal),
    Friend(name: "정아인", type: .normal),
    Friend(name: "정진한", type: .best)
]

let groupedFriend = Dictionary(grouping: friendList) { $0.type }

let groupedFriend1 = Dictionary(grouping: friendList) { (friend) -> FriendType in
                                                            return friend.type
                                                        }

print(groupedFriend)


groupedFriend[.normal]
groupedFriend[.best]
