import UIKit

/*
 Zedd 블로그 Protocol(1)
 프로퍼티 정의
 */

//선생님이라는 protocol 이 있다고 가정해보자.
//protocol 에선 정의만 하고, 구현은 protocol 을 채택한 곳에서 이루어진다
//protocol 은 서로간의 지켜야할 규약 이라는 것만 기억하자

//protocol 선생님 {
//    과목명
//    담당클래스
//    가르치다()
//    과제를 내다()
//}

//protocol SomeProtocol {
//    var mustBeSettable: Int { get set }
//    var doesNotNeedToBeSettable: Int { get }
//}
//
//protocol AnotherProtocol {
//    static var someTypeProperty: Int { get set }
//}
//
//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//struct Person: FullyNamed {
//    var fullName: String
//}
//
//var john = Person(fullName: "John Appleseed")
//
//john.fullName = "youngmo"
//
//struct PersonTwo: FullyNamed {
//
//    var name: String
//
//    var fullName: String {
//        return name
//    }
//}
//
//var youngmo = PersonTwo(name: "ttt")
//
//
//
//struct PersonThree: FullyNamed {
//    var name: String
//    var fullName: String {
//        get{
//            return name
//        }
//
//        set{
//            name = newValue
//        }
//    }
//}
//
//var testPersonThere = PersonThree(name: "testThree")
//testPersonThere.fullName = "gg"
//
//print(testPersonThere.name)

//protocol FullyNamed{
//    var name: String {get set}
//}


/*
 Zedd 블로그 Protocol(2)
 메서드 정의
 */

//protocol SomeProtocol{
////    func someMethod()
////    func anotherMethod(name: String, age: Int) -> Int
////    func protocolMethod() -> String
//
//    static func someTypeMethod()
//    static func anotherTypeMethod()
//
//}
//
//class Zedd: SomeProtocol {
//    static func someTypeMethod() {
//
//
//    }
//
//    class func anotherTypeMethod() {
//
//    }
//
//}








//protocol RandomNumberGenerator {
//    func random() -> Double
//}
//
//class LinearCongruentialGenerator: RandomNumberGenerator {
//
//    var lastRandom = 42.0
//    let m = 13999.0
//    let a = 3877.0
//    let c = 29573.0
//
//    func random() -> Double {
//        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
//        return lastRandom / m
//    }
//}
//
//
//protocol SomeProtocol {
//    mutating func SomeMethod(_ num: Int)
//}
//
//struct SomeStruct: SomeProtocol {
//    var x = 0
//
//    mutating func SomeMethod(_ num: Int) {
//            x += num
//    }
//}
//
//class Dice {
//    let sides: Int
//    let generator: RandomNumberGenerator
//
//    init(sides: Int, generator: RandomNumberGenerator) {
//        self.sides = sides
//        self.generator = generator
//    }
//
//    func roll() -> Int {
//        return Int(generator.random() * Double(sides)) + 1
//    }
//}
//
//var test = Dice(sides: 6, generator: LinearCongruentialGenerator())
//
//for _ in 1...5 {
//    print("\(test.roll())")
//}


//
//extension String {
//    func test(_ param: String) -> String {
//        return param + param
//    }
//}
//
//var testValue: String = "aaa"
//
//var toto = testValue.test(testValue)
//print(toto)







//protocol AddString {
//    var addHello: String { get }
//}
//
//extension String: AddString {
//    var addHello: String {
//        return "Hello \(self)"
//    }
//
//
//}
//
//var name = "youngmo"
//name.addHello







//protocol youngmoProtocol {
//    var returnDouble: Double {get}
//    mutating func add(n: Int)
//}
//
//extension Int: youngmoProtocol {
//
//    var returnDouble: Double {
//        return Double(self)
//    }
//
//    mutating func add(n: Int) {
//        self += n
//    }
//
//}
//
//var number:Int = 10
//number.returnDouble
////number.add(n: 19)
////number.returnDouble
//
//number.add(n: 20)
//
//
//
//struct Zedd {
//    var myDouble = 0.0
//    var returnDouble:Double {
//        return myDouble
//    }
//
//    mutating func add(n: Int) {
//        myDouble += Double(n)
//    }
//
//}
//
//extension Zedd: youngmoProtocol {
//
//}
//
//var tsst = [youngmoProtocol]()
//var zedd = Zedd()






/*
 Zedd 블로그 Protocol(4)
 */
//protocol Named {
//    var name: String { get }
//}
//
//protocol Aged {
//    var age: Int { get }
//}
//
//
//struct Person: Named, Aged {
//    var name: String
//    var age: Int
//}
//
//func wishHappyBirthday(to celebrator: Named & Aged) {
//    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
//}
//
//var birthDayPerson = Person(name: "youngmo", age: 40)
//wishHappyBirthday(to: birthDayPerson)
//
//
//class Location {
//    var latitude: Double
//    var longitude: Double
//
//    init(latitude: Double, longitude: Double) {
//        self.latitude = latitude
//        self.longitude = longitude
//    }
//}
//
//class City: Location, Named{
//    var name: String
//
//    init(name: String, latitude: Double, longitude: Double) {
//        self.name = name
//        super.init(latitude: latitude, longitude: longitude)
//    }
//}
//
//func beginConcert(in location:Location & Named) {
//    print("Hello, \(location.name)!")
//}
//
//var seattle = City(name: "Seoul", latitude: 47.6, longitude: -122.3)
//beginConcert(in: seattle)


protocol Named{
    var name: String { get }
}

class A: Named {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class B {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let instanceA = A(name: "Zedd")
let instanceB = B(name: "Martin Garrix")

var arr = [AnyObject]()
arr.append(instanceA)
arr.append(instanceB)

for index in arr {
    if let index = index as? Named{
        print(index.name)
    } else {
        print("Wrong")
    }
}


//이거 존나 중요한 개념이라 생각함.
//어렵다. ;;
@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}

class Counter {
    var count = 0
    var dataSource: CounterDataSource?
    
    func increment() {
        if let amount = dataSource?.increment?(forCount: count) {
            count += amount
        }else if let amount = dataSource?.fixedIncrement{
            count += amount
        }
    }
}

class ThreeSource: NSObject, CounterDataSource {
    func increment(forCount count: Int) -> Int {
        if count == 0 {
            return 0
        } else if count < 0 {
            return 1
        } else {
            return -1
        }
    }
    
}


var counter = Counter()
counter.count = -4
counter.dataSource = ThreeSource()

for _ in 1...5 {
    counter.increment()
    print(counter.count)
}

//-----------------------------------------------------------------------------------------

extension Named {
    var name: String {
        return "hello"
    }
}

struct SomeStruct: Named {
    
}

var value = SomeStruct()
value.name


//-----------------------------------------------------------------------------------------

protocol Concatenate {
    var name: String { get }
}

class SomeClass: Concatenate {
    var nameStorage: String = ""
    var name: String  {
        get{
            return nameStorage
        }
        
        set{
            nameStorage = newValue
        }
    }
}

extension Collection where Iterator.Element : Concatenate {
    var concatenateString: String {
        let itemsAsText = self.map{ $0.name }
        return itemsAsText.joined(separator: " ")
    }
}
