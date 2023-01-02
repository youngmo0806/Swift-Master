import UIKit


var myArray: [Int] = [0,1,2,3,4,5,6,7,8,9,10]

for item in myArray {
    print("item : \(item)")
}

print("-------------------------")

for item in myArray where item > 5 {
    print("item : \(item)")
}

print("-------------------------")

for item in myArray where item % 2 == 0 {
    print("item : \(item)")
}
