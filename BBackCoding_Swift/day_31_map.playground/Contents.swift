import UIKit


//고차함수의 한 종류 : map -> 모양을 바꾼다

let friendsArray:[String] = ["성규","무석","대건","경우","재성","영모"]

let myFriends = friendsArray.map { afriend in
    return "내 친구 ->" + afriend
}



let bestFriendsArray:[String?] = ["성규",nil,"대건","경우","재성","영모"]

let bestMyFriends = bestFriendsArray
    .compactMap { $0 }
    .map{ "살아남은 친구는 \($0)" }


let number: [Int] = [22, 33, 44, 55]

let myNumber = number.map {
    return "나의 숫자 \($0)"
}

let myPetDictionary = ["고양이":"야옹", "강아지":"멍멍" ,"송아지":"음메"]

let myPet1: [String] = myPetDictionary.map { (animal, cry) in
    return "\(animal)의 울음소리는  \(cry) 이다"
}

let myPet2: [String] = myPetDictionary.map { (animal: String, cry: String) in
    return "\(animal)의 울음소리는  \(cry) 이다"
}

let myPet3: [String] = myPetDictionary.map {
    return "\($0)의 울음소리는  \($1) 이다"
}

let numberSet:Set<Int> = [1,1,1,2,3,4,4,4,5,6,6,6,7,8,8,]

let myFavoriteNumber: [String] = numberSet.map {
    return "\($0 * 10) 입니다."
}


