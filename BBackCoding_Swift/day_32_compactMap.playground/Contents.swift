import UIKit

//CompactMap - nil을 제거하고 반환해 주는 map


var myArray = ["one","2","3","four","5"]

let intArry = myArray.map { item in
    return Int(item)
}

print(intArry)

let onlyIntArray = myArray.compactMap { item in
    return Int(item)
}

print(onlyIntArray)
