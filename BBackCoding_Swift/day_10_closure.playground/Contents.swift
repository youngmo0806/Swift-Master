import UIKit


//closure

//String을 반환하는 클로저
var myName: String = {
    //myName 으로 들어간다
    return "정영모"
}()

print(myName)


//클로저 정의
var myRealName: (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}


myRealName("개호로")


let myRealNameLogic: (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("testestest")
