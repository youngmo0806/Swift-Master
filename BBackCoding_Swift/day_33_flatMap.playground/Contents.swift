import UIKit


//flat map 납작하게?

//2차원 배열을 1차원 배열로 뽑아낸다
let myFriend = [["철수"],["영희"],["제임스","본드"],["스티브","잡스",],["개발하는","정영모"]]

let flatMapped = myFriend.flatMap { (item: [String]) in
    return item
}


print(flatMapped)
