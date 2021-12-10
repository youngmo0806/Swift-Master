import UIKit

//Random Func Test Module

//Swift에서 제공하는 랜덤함수 세가지

var test1 = arc4random() //0과 2^32-1 사이의 난수
print("arc4random -> UInt32 return => [\(test1)]")

var test2 = arc4random_uniform(500) //0~499 사이의 난수
print("arc4random_uniform -> UInt32 return => [\(test2)]")

var test3 = drand48() //0~0.1 사이의 난수
print("drand48 -> Double return => [\(test3)]")


