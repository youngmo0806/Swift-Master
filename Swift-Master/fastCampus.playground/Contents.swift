import UIKit

//MARK: - function
// 1. 성, 이름을 받아서 fullName을 출력하는 함수 만들기
func namePrint(firstName: String, lastName: String) {
    print("full name is : \(firstName) \(lastName)")
}

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수만들기
func namePrint2(_ firstName: String, _ lastName: String) {
    print("full name is : \(firstName) \(lastName)")
}

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

func namePrint3(firstName: String, lastName: String) -> String{
    let fullname = "\(firstName) \(lastName)"
    return fullname
}

//exec
namePrint(firstName: "youngmo", lastName: "jung")
namePrint2("youngmo", "jung")
var result = namePrint3(firstName: "youngmo", lastName: "jung")
print("\(result)")



//MARK: - Optional
var carName: String?
var actor: String? = "iu"

//캐스팅이 될수도 안될수도 있기 때문에 Int? 타입이 된다.
let num = Int("10")

//Optional 고급기능 4가지

//Forced unrapping ->
//Optional binding (if let)
//Optional binding (guard)
//Nil coalescing

//940909
