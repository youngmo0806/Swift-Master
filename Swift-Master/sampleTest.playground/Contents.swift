import UIKit


//삼항연산자
var num: Int = 150

func testFunc(number: Int) {
    print(#function)
    
//    if number > 100 {
//        print("1")
//    }else{
//        print("2")
//
//    }
    
    number < 100 ? print("1") : print("2")
    
}


//print("youngmo")

testFunc(number: num)
