import UIKit

let testDataArray: [Int] = [0,1,2,3,4]

//map - 컨테이너 내부의 기존 데이터를 변형하여 새로운 컨테이너를 생성
let mapTestResult1: [Int] = testDataArray.map { (number: Int) -> Int in
    return number * 2
}
let mapTestResult2: [Int] = testDataArray.map{ $0 * 2}

print("mapTestResult1 map : \(mapTestResult1)")
print("mapTestResult2 map : \(mapTestResult2)")

//compactMap - 컨테이너 안에 옵셔널 값이 있다면 그 옵셔널 값을 제외하고 새로운 컨테이너 안에 넘겨 주는데 사용하게 된다.
let testCompactMap = ["1","2","three","////4////","5"]
let testCom: [Int?] = testCompactMap.map{ Int($0)}
let testComMap: [Int] = testCompactMap.compactMap{ Int($0) }

print("nil 이 있는 map : \(testCom)")
print("compactMap 적용 : \(testComMap)")



//filter - 컨테이너 내부의 값을 걸러서 새로운 컨테이너를 추출한다.
let testFilter1: [Int] = testDataArray.filter { (number:Int) -> Bool in
    return number % 2 == 0
}

let testFilter2: [Int] = testDataArray.filter{ $0 % 2 != 0}

print("짝수만 골라 봤어요 : \(testFilter1)")
print("홀수만 골라 봤어요 : \(testFilter2)")


//reduce - 컨테이너의 내부의 컨텐츠를 하나로 통합합니다.

//요놈은 초기값을 3으로 준놈이다.

let testReduce1: Int = testDataArray.reduce(3) { (result: Int, currentItem: Int) -> Int in
    print("\(result) + \(currentItem)")
    return result + currentItem
}

let testReduce2: Int = testDataArray.reduce(0) { (result: Int, currentItem: Int) -> Int in
    print("\(result) - \(currentItem)")
    return result - currentItem
}

let testReduce3: Int = testDataArray.reduce(0) { $0 + $1 }

print("testReduce1 : \(testReduce1)")
print("testReduce2 : \(testReduce2)")
print("testReduce3 : \(testReduce3)")
