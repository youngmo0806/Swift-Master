import UIKit

//사물함으로 여는것, 키와 값으로 한쌍~

var myFriends = ["key1" : "value1",
                 "key2" : "value2",
                 "key3" : "value3",]


let myBestFriend = myFriends["key1"]

let testFriend = myFriends["key4", default: "데이터 없음"]

myFriends["key1"] = "test"

let otherBestFriend = myFriends["key1"]

print("\(otherBestFriend!)")

myFriends["key4"] = "value4"

let newFriend = myFriends["key4"]

myFriends.updateValue("value5", forKey: "key5")

myFriends["key5"]

//빈딕셔너리 생성
//let emptyDictionary: [String: Int] = [:]
//let emptyDictionary = [String: Int] = [String: Int]()
let emptyDictionary = [String: Int]()


myFriends.count

for item in myFriends {
    print("item : \(item.key)")
}
