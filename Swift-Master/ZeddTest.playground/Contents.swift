import UIKit

//class 참조(Call by reference) 타입 ios 대부분 class 로 구성 / 상속가능
//struct 깂(Call by value) 타입 swift 대부분 struct 로 구성 / 상속 불가능
//enum 깂(Call by value) 타입

//enum Animal {
//    case tiger
//    case lion
//}
//
//enum AnimalT: Int {
//    case tiger = 0
//    case lion
//}
//
//let tiger: AnimalT = .tiger
//let lion: AnimalT = .lion
//print("tiger is name \(tiger.rawValue)")
//print("lion is name \(lion)")


//let numberOfLegs = ["spider":8, "ant":6, "cat":4]
//let test = [1,2,3,45,56,67,7,78,8,88]
//let ott = test.sorted(by: >)
//print("\(ott)")
//
//for (name,legs) in numberOfLegs {
//    let order = numberOfLegs.sorted(by: <)
////    print("\(name) is \(legs)")
//    print(order)
//}


//struct Point {
//    var x = 0.0
//    var y = 0.0
//}

//class Point {
//    var x = 0.0
//    var y = 0.0
//}
//
//let point = Point.init()
//
//var cPoint = point
//cPoint.x = 5
//
////struct - 0.0 : 5.0 [Call by Value]
////class  - 5.0 : 5.0 [Call by Referance]
//print("\(point.x) : \(cPoint.x)")



//var test: Int
var test: Int!
test = nil
print("\(test)")


var someValue: Int? = 30
var Value = someValue

