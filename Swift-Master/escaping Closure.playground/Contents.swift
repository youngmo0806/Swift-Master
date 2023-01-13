import UIKit


//escaping closure
//함수에 전달인자로 전달한 클로저가 함수 종료 후에 호출될 때 클로저가 함수를 탈출 한다고 표현 한다.

//예를 들어 비동기 작업을 실행하는 함수들은 클로저를 컴플리션 핸들러 전달인자로 받아옵니다.
//비동기 작업으로 함수가 종료되고 난 후에 호출할 필요가 있는 클로저를 사용해야 할 때 (탈출 클로저) 가 필요합니다.



var completionHandlers: [() -> Void] = []

/// 탈출 클로저와 그 클로저를 저장할 수 있는 함수 외부의 배열 변수가 있습니다.
/// - Parameter completionHandler:
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}




//함수를 탈출 하는 클로저의 예 --------------------------------------- start ------------------------------------
typealias VoidVoidClosure = () -> Void

let firstClosure: VoidVoidClosure = {
    print("Closure A")
}

let secondClosure: VoidVoidClosure = {
    print("Closure B")
}


//first와 second 매개변수 클로저는 함수의 반환 값으로 사용될 수 있으므로 탈출 클로저 입니다.
func returnOneClosure(first: @escaping VoidVoidClosure, second: @escaping VoidVoidClosure, shouldReturnFirstClosure: Bool) -> VoidVoidClosure {
    
    //전달인자로 전달받은 클로저를 함수 외부로 다시 반환하기 때문에 함수를 탈출하는 클로저입니다.
    return shouldReturnFirstClosure ? first : second
    
}

//함수에서 반환한 클로저가 함수 외부의 상수에 저장되었습니다.
let returnedClosure: VoidVoidClosure = returnOneClosure(first: firstClosure, second: secondClosure, shouldReturnFirstClosure: true)

returnedClosure() //Closure A

var closures: [VoidVoidClosure] = []

//closure 매개변수 클로저는 함수 외부의 변수에 저장될 수 있으므로 탈출 클로저입니다.
func appendClosure(closure: @escaping VoidVoidClosure) {
    
    //전달인자로 전달받은 클로저가 함수 외부의 변수 내부에 저장되므로 함수를 탈출합니다.
    closures.append(closure)
    
}

//함수를 탈출 하는 클로저의 예 ----------------------------------- end ----------------------------------------



