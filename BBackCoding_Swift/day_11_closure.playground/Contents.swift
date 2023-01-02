import UIKit

//

func sayHi(completion: () -> Void) {
    print("sayHi() called")
    
    sleep(2) //2초 잠깐 멈추기
    
    //completion 클로저 실행
    completion()
}

sayHi(completion: {
    print("2초가 지났다.111")
})


sayHi() {
    print("2초가 지났다2222")
}

sayHi {
    print("2초가 지났다3333")
}


//매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName() called")
    sleep(2)
    
    //클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 열공")
}


sayHiWithName(completion: { (comment: String) in
    print("2뒤에 그가 말했다1111. comment: \(comment)")
    
})

sayHiWithName(completion: { comment in
    print("2뒤에 그가 말했다2222. comment: \(comment)")
    
})

sayHiWithName { comment in
    print("2뒤에 그가 말했다3333. comment: \(comment)")
}

sayHiWithName {
    print("2뒤에 그가 말했다4444. comment: \($0)")
}


//매개변수로서 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void) {
    print("sayHiWithFullName() called")
    sleep(2)
    
    //클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 열공","두개째입니다.")
}

sayHiWithFullName{ first, second in
    print("들어 온거야? \(first) : \(second)")
}

sayHiWithFullName{ _, second in //매개변수 생략도 가능
    print("들어 온거야? : \(second)")
}

sayHiWithFullName{
    print("들어 온거야? \($0) : \($1)")
}



//옵셔널 클로저
func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    
    sleep(2) //2초 잠깐 멈추기
    
    //completion 클로저 실행
    completion?()
}

sayHiOptional()

sayHiOptional{
    print("옵셔널 클로저에 채움")
}



//(Int) -> String
//func transForm(number: Int) -> String {
//    return "받은 숫자는 \(number)"
//}

var myNumbers: [Int] = [0,1,2,3,4,5]

var transFormedNumbers = myNumbers.map { aNumber in
    return "숫자: \(aNumber)"
}

var transFormedNumbers2 = myNumbers.map { (aNumber: Int) -> String in
    return "숫자: \(aNumber)"
}


var transFormedNumbers3 = myNumbers.map {
    return "숫자: \($0)"
}
