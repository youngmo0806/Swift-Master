import UIKit

/***
  * closure Test and playground.
  * closure Test and playground.
 ***/

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)


func getName(name: String) -> String {
    return name
}

let name = getName(name: "개발이 취미인 사람")
//let nameFun = getName(name: )  //상수에 함수 자체를 할당

let nameFun: (String) -> String = getName


//-------------
//덧셈함수 선언
func plus(a: Int) -> Int {
    print("3")
    return a + 1
}

//(Int) -> Int 형태에 파라미터를 받는다.
func setPlus(a: Int, fn: (Int) -> Int) -> Int {
    print("2")
    return fn(a)
}

print("1")

//plus 함수를 전달한다.
setPlus(a: 1, fn: plus)
print("4")


