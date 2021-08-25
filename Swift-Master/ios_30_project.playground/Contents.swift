import UIKit
//FastCampus 강의 내용 Basic 정리. (문법)

enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}
//throw PhoneError.batteryLow(batteryLevel: 20)

//swift 에서 오류 처리 4가지 방법

//1.함수에서 발생한 오류를 해당 함수로 전파
func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    
    guard batteryLevel != -1  else { throw PhoneError.unknown }
    guard batteryLevel > 20  else { throw PhoneError.batteryLow(batteryLevel: 20) }
    
    return "배터리 상태가 정상입니다."
}


//2.docatch 로 처리
do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알수없는 에러입니다.")
} catch PhoneError.batteryLow(let batteryLevel) {
    print("배터리 전원 부족 남은 배터리 \(batteryLevel)%")
} catch {
    print("그외 오류 발생: \(error)")
}


//3.옵셔널 값으로 오류 처리, 함수가 에러를 던지면 nil 이 리턴되고, 정상이면 옵셔널로 값이 넘어 온다.
let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status)


//4. 오류가 발생하지 않을 것이라는 확신으로 처리, 에러시 런타임 에러: 앱이 종료 됩니다.
let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2)


//------------------------------------------------------------------------------------------

//closure
let hello = { () -> () in
    print("hello closure")
}

hello()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

//hello2(name: "youngmo") //closure를 이렇게 호출 하면 에러
hello2("youngmo")

func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: { () -> () in
    print("closure hello")
})

doSomething {
    print("hello2")
}


func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}

doSomething2()()

func doSomething2(success: () -> (), fail: () -> ()) {
    
}

doSomething2 {
    //success
    
} fail: {
    //fail
    
}


//closure 표현 간소화
func doSomething3(closure: (Int, Int, Int) -> Int) {
    closure(1,2,3)
}

doSomething3(closure: { (a,b,c) in
    return a + b + c
})

doSomething3(closure: {
    return $0 + $1 + $2
})

doSomething3(closure: {
    $0 + $1 + $2
})

doSomething3() {
    $0 + $1 + $2
}

doSomething3 {
    $0 + $1 + $2
}


//고차 함수
//-다른 함수를 전달인자로 받거나 함수 실행의 결과를 함수로 반환하는 함수
//map, filter,reduce


//map
let numbers = [0,1,2,3]
let mapArray = numbers.map { (number) -> Int in
    return number * 2
}
 print(" mapArray : \(mapArray)")

//filter
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter { $0 > 5 }

print("filter : \(filterArray)")


//reduce
let someArryay = [1,2,3,4,5]
let reduceResult: Int = someArryay.reduce(2) { (result: Int, currentItem: Int) -> Int in
    print("누적값 : \(result) + 현재값 : \(currentItem)")
    return result + currentItem
}

print(reduceResult)

