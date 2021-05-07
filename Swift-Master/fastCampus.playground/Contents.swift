import UIKit

//function
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
    var fullname = "\(firstName) \(lastName)"
    return fullname
}






//exec
namePrint(firstName: "youngmo", lastName: "jung")
namePrint2("youngmo", "jung")
var result = namePrint3(firstName: "youngmo", lastName: "jung")
print("\(result)")
