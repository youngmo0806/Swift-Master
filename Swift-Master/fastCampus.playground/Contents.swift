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

if let unwrappedCarName = carName {
    print("1")
} else {
    print("2")
}


func printParsedInt(from: String){
    
    if let parsedInt = Int(from) {
        print("\(parsedInt)")
    } else {
        print("Int 컨버팅 실패")
    }
}

func printParsedIntGuard(from: String){
    
    guard let parsedInt = Int(from) else {
        print("Int 컨버팅 실패")
        return
    }
}


printParsedInt(from: "100")
printParsedIntGuard(from: "HEllo")

carName = "모델 3"
let myCarName: String = carName ?? "모델 S"


//1.최애 음식이름을 담는 변수를 작성 (String?)
//2.옵셔널 바인딩을 이용해서 값을 확인해보기
//3.닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?
let myFood: String? = "갈비"

if let food = myFood {
    print(food)
}else{
    print("food nil")
}


func printNickName(name: String?){
    
    if let nickName = name {
        print(nickName)
    }
    
    guard let nickName = name else {
        print("nil ==>")
        return
    }
}

printNickName(name: "jinhan")



/*
 closure
 */
var multiplyClosue: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}

var multiplyClosue2: (Int, Int) -> Int = { $0 * $1 }

var multiplyClosue3: (Int, Int) -> Int = { a,b in
    return a * b
}


func operateTwoNum(a: Int, b: Int, operation: (Int, Int)->Int) -> Int {
    let result = operation(a,b)
    return result
}

operateTwoNum(a: 5, b: 5, operation: multiplyClosue)

let voidClosure: () -> Void = {
    print("ios 개발자 짱, 클로셔 사랑해")
}

voidClosure()


//Capturing Value
var count = 0

let incre = {
    count += 1
}

incre()
incre()
incre()

count

//{
//    (param) -> return type in
//    statment
//    ...
//}

//Example 1: Cho simple Closure

//let choSimpleClosure = {
//}
//
//choSimpleClosure()

//Example 2: 코드블록을 구현한 Closure
//let choSimpleClosure = {
//    print("hello")
//}

//Example 3: 인풋 파라미터를 받는 Closure
//let choSimpleClosure: (String) -> Void = { name in
//    print("hello \(name)")
//}
//
//choSimpleClosure("youngmo")

//Example 4: 값을 리턴하는 Closure
//let choSimpleClosure: (String) -> (String) = { name in
//    let message = "my name is \(name)"
//    return message
//}
//
//choSimpleClosure("youngmo")


//Example 5: Closure를 파라미터로 받는 함수 구현

//func someFunction(choSimpleClosure: () -> Void) {
//    print("호출")
//}
//
//
//someFunction(choSimpleClosure: {
//    print("hello corona")
//})

//func someFunction(choSimpleClosure: () -> Void) {
//    print("호출")
//    choSimpleClosure()
//}
//
//someFunction(choSimpleClosure: {
//    print("hello corona")
//})

//Example 6: Trailing Colsure
func someFunction(message: String, choSimpleClosure: () -> Void) {
    print("호출 \(message)")
    choSimpleClosure()
}

someFunction(message: "메시지 테스트", choSimpleClosure: {
    print("hello corona")
})

someFunction(message: "메시지 테스트2") {
    print("hello corona2")
}
