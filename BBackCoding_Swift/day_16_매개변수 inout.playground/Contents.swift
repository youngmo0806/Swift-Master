import UIKit

//paramiter - inout
//매개 변수 값의 변경

func sayName(_ name: String) {
    print("안녕 난 \(name) 라고해")
}


func sayHi(_ name: inout String) {
    name = "change " + name   //매개변수의 값을 변경할수 없다. let개념
    print("안녕 난 \(name) 라고해")
}

sayName("정영모")

var name = "뭐야?"
sayHi(&name)
