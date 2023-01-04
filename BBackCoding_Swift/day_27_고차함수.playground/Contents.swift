import UIKit

//고차함수


//일반 함수
func getName(_ name: String) -> String {
    return "나의 이름은 \(name)"
}


//스트링을 하나 받아서 스트링을 반환 하는 getNameClosure 선언
var getNameClosure: (String) -> String


func sayHello( getName: (String) -> String, name: String) -> String{
    return getName(name)
}


let resultOne = sayHello(getName: getName(_:), name: "youngmo")


//------------------------------------------------------------------------

let number = [3,4,5,-56,1,26,72,28,3,4]

let stringNumber: [String] = number.map { (num: Int) -> String in
    return "\(num) 입니다"
}



//------------------------------------------------------------------------

let evenNumber: [Int] = number.filter { (num: Int) in
    return num % 2 == 0
}

let oddNumber: [Int] = number.filter { num in
    return num % 2 != 0
}
