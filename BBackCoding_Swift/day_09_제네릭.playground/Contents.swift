import UIKit

//제네릭 - 어떠한 형태의 데이터도 받을수 있다는 개념으로 보자


//struct MyArray<SomeElement>{
//
//    //제네릭을 담은 빈 배열
//    var elements: [SomeElement] = [SomeElement]()
//
//    //생성자 - 구조체는 필수 아니지만 편의를 위해서 만듬
//    init(_ elements: [SomeElement]) {
//        self.elements = elements
//    }
//}


//보통, 제네릭은 T 라는 명명으로 많이 쓴다.
struct MyArray<T>{
    
    //제네릭을 담은 빈 배열
    var elements: [T] = [T]()
    
    //생성자 - 구조체는 필수 아니지만 편의를 위해서 만듬
    init(_ elements: [T]) {
        self.elements = elements
    }
}


struct Friend {
    var name: String
    
}


struct BBckCoder {
    var name: String
}


var mySomeArray = MyArray([1,2,3])

print("mySomeArray : \(mySomeArray)")

var myStringArray = MyArray(["asdf","aa","cc"])

print("myStringArray : \(myStringArray)")


var test1 = Friend(name: "김개똥")
var test2 = Friend(name: "김사랑")
var test3 = Friend(name: "전도연")

var myTestArray = MyArray([test1,test2,test3])


print("myTestArray : \(myTestArray)")
