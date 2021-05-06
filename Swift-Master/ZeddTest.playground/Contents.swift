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
//var test: Int!
//test = nil
//print("\(test)")
//
//
//var someValue: Int? = 30
//var Value = someValue

//욥셔널 바인딩(Optional Binding)

//func printName(_name: String) {
//    print("\(_name)")
//}
//
//var myName:String? = nil;
//if let name = myName {
//    printName(_name: name)
//}
//
//var height: Int? = 170
//
//if let value = height {
//    if value >= 160 {
//        print("wow")
//    }
//}
//
//if let value = height, value > 160 {    //&&의 효과
//    print("wow 2")
//}


//옵셔널 체이닝(Optional Chanining) - 하위 프로퍼티에 Optional 값이 있는지 연속적으로 확인하면서 중간에 하나라도 nil이 발견된다면 nil이 반환하는것이 옵셔널 체이닝 방식.

//class Person {
//    var residence: Residence?
//}
//residence라는 변수가 Residence 클래스를 상속받고 있네요!
//하지만 Optional기호 ?를 같이 주었습니다.
//밑에서 Person타입의 인스턴스가 만들어지면 residence변수의 초기값은 nil이 되겠네요.

//class Residence {
//    var numberOfRooms = 1
//}
//
//let zedd = Person()
//zedd.residence = Residence()

//여기서 Person타입의 인스턴스가 zedd로 만들어졌네요.
//zedd의 프로퍼티로 residence가 있겠죠?
//(Person클래스의 멤버변수이기 때문)
//하지만 residence변수는 Residence클래스를
//옵셔널 타입으로 상속받고 있기 때문에
//residence에는 값이 있을수도, 또는 없을수도 있겠네요.
//위에서 말씀드렸죠?
//옵셔널 타입은 따로 초기화를 하지 않으면 nil로 초기화가 된답니다.
//그러면 현재 zedd의 residence의 값은 nil이겠네요!

//if let roomCount = zedd.residence?.numberOfRooms {
//    print("zedd's residence has \(roomCount) room(s).")
//} else {
//    print("Unable to retrieve the number of rooms.")
//}

//강제 언랩핑(Forced Unwrapping)
// ! you know?




//나머지 구해보기
//var a = 10 % 3
//var b = 10.0.truncatingRemainder(dividingBy: 3) //정수형이 아닐때


//선택정렬
//var arr = [9,8,7,6,5,4,3,2,1]
//
//for i in 0..<arr.count {
//    var minn: Int = arr[i]
//    var location: Int = i
//
//    for j in i+1..<arr.count {
//        if minn > arr[j] {
//            minn = arr[j]
//            location = j
//        }
//    }
//
//    if i != location {
//        arr.swapAt(i, location)
//    }
//}
//
//for i in 0..<arr.count {
//    print(arr[i])
//}





var test = "1 2"

var aa = test.components(separatedBy: " ").map({ (value: String) -> Int in return Int(value)!})
//    print(Int(aa[0])! + Int(aa[1])!)
print(aa)

//for i in 0..<aa.count {
//    print(aa[i])
//}
