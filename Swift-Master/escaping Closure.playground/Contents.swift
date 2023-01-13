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



/// Non-Escaping Closure
/// - Parameter closure: runClosure() 함수의 closure 인자로 전달됨
func runClosure(closure: () -> Void) {
    closure()
}

//클로저가 실행되는 순서를 보면
//
//클로저가 runClosure() 함수의 closure 인자로 전달됨
//함수 안에서 closure() 가 실행됨
//runClosure() 함수가 값을 반환하고 종료됨
//이렇게 클로저가 함수가 종료되기 전에 실행되기 때문에 closure는 Non-Escaping 클로저 입니다.




class ViewModel {
    var completionhandler: (() -> Void)? = nil
    
    /// Escaping Closure
    /// - Parameter completion:fetchData() 함수의 completion 인자로 전달됨
    func fetchData(completion: @escaping () -> Void) {
        completionhandler = completion
    }
}

//클로저가 실행되는 순서를 보면
//
//클로저가 fetchData() 함수의 completion 인자로 전달됨
//클로저 completion이 completionhandler 변수에 저장됨
//fetchData() 함수가 값을 반환하고 종료됨
//클로저 completion은 아직 실행되지 않음
//completion은 함수의 실행이 종료되기 전에 실행되지 않기 때문에 escaping 클로저, 다시말해 함수 밖(escaping)에서 실행되는 클로저 입니다.



//escaping 클로저가 사용되는 흔한 예로는 비동기로 실행되는 HTTP Request CompletionHandler이 있습니다.
func makeRequest(_ completion: @escaping (Result<(Data, URLResponse), Error>) -> Void ) {
    URLSession.shared.dataTask(with: URL(string: "http://jusung.github.io/")!) { data, response, error in
      if let error = error {
        completion(.failure(error))
      } else if let data = data, let response = response {
        completion(.success((data, response)))
      }
    }
}

//makeRequest() 함수에서 사용되는 completion 클로저는 함수 실행 중에 즉시 실행되지 않고,
//URL 요청이 끝난 후 비동기로 실행 됩니다. 이 경우에도 completion의 타입에 @escaping 을 붙여서 escaping 클로저라는 것을 명시해줘야 합니다.
//보통 클로저가 다른 변수에 저장되어 나중에 실행되거나 비동기로 실행될 때 escaping 클로저가 사용됩니다.
