import UIKit

for i in 0...5 {
    print(i)
}

print("------------")

for i in 0..<5 {
    print(i)
}

print("------------")

for i in 0..<5 where i % 2 == 0 {
    print(i)
}

var randomInt: [Int] = []

for _ in 0...5 {
    var randomNumber = Int.random(in: 1...45)
    randomInt.append(randomNumber)
}

print("randomInt : \(randomInt.count)")
print("randomInt : \(randomInt.sorted())")
