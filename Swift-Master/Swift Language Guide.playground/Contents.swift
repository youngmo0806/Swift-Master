import UIKit
//MARK: - 1. 기본연산자 (Basic Operators)

let b = 10
var a = 5
a = b

print(a)

let (x,y) = (1,2)

print(x)
print(y)


if x == y {
    print("1")
}
else {
    print("2")
}


1 + 2       //3
5 - 3       //2
2 * 3       //6
10.0 / 2.5  //4

9 % 4   //1
-9 % 4  //-1

//단항 음수 연산자
let three = 3
let minusThree = -three     //minusThree는 -3
let plusThree = -minusThree //plusThree는 3, 혹은 "minus minus 3"

//단항 양수 연산자
let minusSix = -6
let alsoMinusSix = +minusSix    //alsoMinusSix는 -6

//합성 할당 연산자
var aa = 1
aa += 2 //aa = 3

//비교 연산자
1 == 1  //true
2 != 1  //true
2 > 1   //true
1 < 2   //true
1 >= 1  //true
2 <= 1  //false


let name = "world"

if name == "world" {
    print("hello world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

//같은 타입의 값을 갖는 두개의 튜플을 비교할 수 있습니다. 튜플의 비교는 왼쪽에서 오른쪽 방향으로 이뤄지고 한번에 한개의 값만 비교합니다.
//이 비교를 다른 두 값을 비교하게 될 때까지 수행합니다.
(1, "zebra") < (2, "apple")   // true, 1이 2보다 작고; zebra가 apple은 비교하지 않기 때문
(3, "apple") < (3, "bird")    // true 왼쪽 3이 오른쪽 3과 같고; apple은 bird보다 작기 때문
(4, "dog") == (4, "dog")      // true 왼쪽 4는 오른쪽 4와 같고 왼쪽 dog는 오른쪽 dog와 같기 때문

("blue", -1) < ("purple", 1)        // 비교가능, 결과 : true
//("blue", false) < ("purple", true)  // 에러, Boolean 값은 < 연산자로 비교할 수 없기 때문에

//Swift 표준 라이브러리에서는 7개 요소 미만을 갖는 튜플만 비교할 수 있습니다.
//만약 7개 혹은 그 이상의 요소를 갖는 튜플을 비교하고 싶으면 직접 비교 연산자를 구현해야 합니다.


//삼항 조건 연산자
//삼항 조건 연산자는 question ? answer1 : answer2의 구조를 갖습니다.
//그래서 question 조건이 참인경우 answer1이 거짓인 경우 answer2가 실행됩니다.
//삼항 조건 연산자는 아래 코드의 축약입니다.
let question = false

if question {
    print("answer1")
} else {
    print("answer2")
}


let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
//rowHeight는 90 (40 + 50)

//위에 삼항 조건 연산을 다음과 같이 풀어 쓸 수 있습니다.
let rowHeight2: Int
if hasHeader {
    rowHeight2 = contentHeight + 50
} else {
    rowHeight2 = contentHeight + 20
}
// rowHeight는 90입니다.


//nil 병합 연산자
//nil 병합 연산자는 a ?? b 형태를 갖는 연산자 입니다.
//옵셔널 a를 벗겨서(unwraps) 만약 a가 nil 인 경우 b를 반환합니다.
//이 nil 병합 연산자는 다음 코드의 축약형입니다
//a != nil ? a! : b
//삼항 조건 연산자를 사용했는데요. 옵셔널 a가 nil이 아니면 a를 unwrap하고nil이면 b를 반환하라는 의미입니다.

let defaultColorName = "red"
var userDefinedColorName: String?   // 이 값은 defaults 값 nil입니다.

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorNam이 nil이므로 colorNameToUse 값은 defaultColorName인 "red"가 설정 됩니다.

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName가 nil이 아니므로 colorNameToUse 는 "green"이 됩니다.

//범위 연산자
//닫힌 범위 연산자
// (a..b)의 형태로 범위의 시작과 끝이 있는 연산자 입니다. for-in loop에 자주 사용됩니다.

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

//반 닫힌 범위 연산자
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack


//단방향 범위
for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

for name in names[..<2] {
    print(name)
}
// Anna
// Alex

let range = ...5
range.contains(7)   // false    해당값을 포함 하는지
range.contains(4)   // true
range.contains(-1)  // true


//논리 연산자
//--논리 부정 연산자
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

//--논리 곱 연산자
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

//--논리 합(OR) 연산자 연산자
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

//논리 연산자의 조함
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

//명시적 괄호
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"



//MARK: - 2. 문자열과 문자(Strings and Characters)
//Swift의 String은 Foundation 프레임워크의 NSString이 bridge된 타입이기 때문에 NSString의 메소드를 String에서 캐스팅 없이 사용 가능합니다.
let something = "Some string literal value"

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowlege" - Einstein
let dollaSign = "\u{24}"            // $, 유니코트 U+0024
let blackHeart = "\u{2665}"         // ♥, 유니코드 U+2665
let sparklingHeart = "\u{1F496}" // 💖,유니코드 U+1F496

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}
// Prints "Nothing to see here"

var variableString = "Horse"
variableString += " and carriage"
// variableString = Horse and carriage

//값 타입 문자열
for character in "Dog!🐶" {
    print(character)
}
// D
// o
// g
// !
// 🐶

//다음과 같이 문자 상수를 선언할 수 있습니다.
let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"


let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome : "hello there"

var instruction = "look over"
instruction += string2
// instruction : "look over there"

welcome.append(exclamationMark)
// welcome : "hello there!"


let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message : "3 times 2.5 is 7.5"



//유니코드
//유니코드는 전 세계의 모든 문자를 컴퓨터에서 일관되게 표현하고 다룰 수 있도록 설계된 국제 표준입니다.
//Swift의 문자열과 문자 타입은 유니코드에 순응(compliant)합니다.

//유니코드 스칼라
//Swift의 네이티브 문자열 타입은 유니코드 스칼라 값으로 만들어 졌습니다.
//하나의 유니코드는 21비트의 숫자로 구성돼 있습니다.
//예를 들면 U+0061는 라틴어의 소문자 a를 나타내고 U+1F425는 정면의 병아리 🐥 를 나타냅니다.

//자모 그룹의 확장
//유니코드를 결합해서 사용할 수 있습니다.
let eAcute: Character = "\u{E9}"  // é
let combinedEAcute: Character = "\u{65}\u{301}"  // e +
// eAcute : é, combinedEAcute : é

//아래는 한글의 “한”자를 단독으로 사용했을 때와 ㅎ,ㅏ,ㄴ의 자모를 따로 결합해서 사용한 예 입니다.
//let precomposed: Character = "\u{D55C}"                        // 한
//let decomposed: Character = "\u{1112}\u{u1161}\u{11AB}"    // ㅎ, ㅏ,ㄴ
// precomposed : 한, decomposed 한

//아래는 é(E9)와 원심볼(20DD)을 결합한 결과입니다.
let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// enclosedEAcute : é⃝

//아래는 지역심볼문자인 U(1F1FA)와 S(1F1F8)를 결합한 결과입니다.
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUS : 🇺🇸

//문자 세기
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// "unusualMenagerie의 문자는 40개"

//문자열 인덱스
//아래와 같이 startIndex, endIndex, index(before:), index(after:), index(_:offsetBy:) 메소드 등을 이용해 문자열에서 특정 문자에 접근할 수 있습니다.
//위 메소드 들은 Collection 프로토콜을 따르는 Array, Dictionary, Set 등에서도 동일하게 사용할 수 있습니다.

//startIndex : 문자열의 시작 요소 인덱스를 가리킨다.
//endIndex : 문자열의 마지막 요소 인덱스 다음을 가리킨다.
//index(before: String.Index) : 인자로 들어온 인덱스 1칸 앞을 가리킨다.
//index(after: String.Index) : 인자로 들어온 인덱스 1칸 뒤를 가리킨다.
//index(String.Index, offsetBy: String.IndexDistance) : 인자로 들어온 인덱스와 offsetBy 차이만큼 떨어진 곳을 가리킨다.
//firstIndex(of: Character), lastIndex(of: Character) : 인자로 들어온 문자가 몇번째 인덱스에 있는지 (Optional)

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a

//greeting[greeting.endIndex] // 에러!
//greeting.index(after: greeting.endIndex) // 에러!

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
// G u t e n  T a g !
}
//문자열 삽입과 삭제
var welcomes = "hello"
welcomes.insert("!", at: welcomes.endIndex)
//hello!

welcomes.insert(contentsOf: " there", at: welcomes.index(before: welcomes.endIndex))
//hello there!

welcomes.remove(at: welcomes.index(before: welcomes.endIndex))
// welcome : hello there

var testMessage = "youngmo jung"
let ranges = testMessage.index(testMessage.endIndex, offsetBy: -3)..<testMessage.endIndex

testMessage.removeSubrange(ranges)
// "youngmo j"


//부분 문자열
let greetings = "Hello, World!"
let indexs = greetings.index(of: ",") ?? greetings.endIndex
let beginning = greetings[..<indexs]
// beginning : Hello

// SubString인 beginning을 String으로 변환(subString은 메모리에 원본 String을 계속 참조)
let newString = String(beginning)


//문자열과 문자 비교
//--문자열과 문자 비교에는 == 혹은 != 연산자를 사용합니다.
let quotations = "We're a lot alike, you and I."
let sameQuotations = "We're a lot alike, you and I."
if quotations == sameQuotations {
    print("These two strings are considered equal")
}
// These two strings are considered equal 출력

//--유니코드는 결합된 문자열을 갖고 비교하게 됩니다.

// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"

// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// These two strings are considered equal 출력

//--접두사와 접미사 비교
let remeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in remeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// There are 5 scenes in Act 1


var mansionCount = 0
var cellCount = 0
for scene in remeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// 6 mansion scenes; 2 cell scenes

//MARK: - 3. 콜렉션 타입(Collection Types)

//Array, Set, Dictionary 세가지 지원 (swift)

//Array
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
// someInts is of type [Int] with 0 items.

someInts.append(3)
// 배열에 3을 추가 했습니다.
someInts = []
// 배열을 비웠습니다. 배열의 아이템 타입은 그대로 Int로 유지됩니다.


//--기본 값으로 빈 배열 생성
var threeDoubles = Array(repeating: 0.0, count: 3)
//threeDouble : Double 타입의 [0.0, 0.0, 0.0]

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles : [2.5, 2.5, 2.5]

//연산자를 이용해 배열을 합칠수 있다.
var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles : [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

//리터럴을 이용한 배열의 생성
var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList2 = ["Eggs","Milk"]

//원소 갯수 확인
print("The shopping list contains \(shoppingList.count) items.")
// The shopping list contains 2 items.

//배열 비었는지 확인
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
//The shopping list is not empty.

//배열에 원소 추가
shoppingList.append("Four")
shoppingList.count  //3

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList.count //7

//배열 특정 위치의 원소 접근
var firstItem = shoppingList[0]

shoppingList[4...6] = ["Bananas","Apples"]
// 4,5,6번째 인덱스 아이템을 Bananas, Apples 로 변환
// 즉, 아이템 3개가 2개로 줄었다.

//특정 위치에 원소 추가/삭제/접근
shoppingList.insert("Maple Syrup", at: 0)
shoppingList
let mapleSyrup = shoppingList.remove(at: 0)
print(mapleSyrup)
firstItem = shoppingList[0]

let apples = shoppingList.removeLast()

//--배열의 순회
for item in shoppingList {
    print("items : \(item)")
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas

//배열의 값과 인덱스가 필요할때는 enumerated() 메소드를 사용합니다.
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas



//Set
//Set 형태로 저장되기 위해서는 반드시 타입이 hashable이어야만 합니다.
//Swift에서 String, Int, Double, Bool 같은 기본 타입은 기본적으로 hashable입니다.
//Swift에서 Set 타입은 Set으로 선언합니다.

//빈 Set 생성
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
// letters is of type Set<Character> with 0 items.

letters.insert("a")
letters = []


//배열 리터럴을 이용한 Set 생성
var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"]
var favoriteGenres2: Set = ["Rock","Classical","Hip hop"]

//Set의 접근과 변경
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

//추가
favoriteGenres.insert("Jazz")
favoriteGenres

//삭제
if let removeGenre = favoriteGenres.remove("Rock") {
    print("\(removeGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
favoriteGenres

//값확인
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funcy in here")
}

//Set의 순회
for item in favoriteGenres {
    print("item : -> \(item)")
}

//Set의 명령
//intersection (교집합)
//symmetricDifference (대칭차)
//union (합집합)
//subtracting (차집합)
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

//Set의 멤버쉽과 동등 비교
//Set의 동등비교와 맴버 여부를 확인하기 위해 각각 == 연산자와 isSuperset(of:), isStrictSubset(of:), isStrictSuperset(of:), isDisjoint(with:) 메소드를 사용합니다.

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// 참
farmAnimals.isSuperset(of: houseAnimals)
// 참
farmAnimals.isDisjoint(with: cityAnimals)
// 참


//Dictionary [Key:Value]
//-- Swift의 Dictionary타입은 Foundation 클래스의 NSDictionary를 bridge한 타입입니다.
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("The airports dictionary contains \(airports.count) items.")
// The airports dictionary contains 2 items.


if airports.isEmpty {
    print("The airport dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}

airports["LHR"] = "London"

for (key,value) in airports {
    print("\(key):\(value)")
}




//MARK: - 4. 제어문(Control Flow)
//Swift 에서는 while loop, if guard, switch, for-in 문 등 많은 제어문을 제공합니다.

//For-in Loops
let namesArry = ["Anna", "Alex", "Brian", "Jack"]
for name in namesArry {
    print("Hello, \(name)!")
}
// Hello, Anna!
// Hello, Alex!
// Hello, Brian!
// Hello, Jack!

let numberOfLegs = ["spider":8,"ant":6,"cat":4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *=  base
}
print("\(base) to the power of \(power) is \(answer)")

let minutes = 60
for tickMark in 0..<minutes {
//    print(tickMark)
}


let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
//    print(tickMark)
}

let hours = 12
let hourInterval = 3

for tickMark in stride(from: 1, to: hours, by: hourInterval) {
    print(tickMark)
}


//While Loops
//--while , repeat-while 두가지가 존재한다.
//while - 조건이 거짓일때 까지 구문을 반복합니다.
var square = 0
var diceRoll = 0

//while square < finalSquare {
//    diceRoll += 1
//    if diceRoll == 7 {
//        diceRoll = 1
//    }
//
//    square += diceRoll
//
//    if square < board.count {
//        square += board[square]
//    }
//}
//print("Game over")

//Repeat-While
// 구문을 최소 한번 이상 실행하고 while 조건이 거짓일때 까지 반복한다.

//repeat {
//    // move up or down for a snake or ladder
//    square += board[square]
//    // roll the dice
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    // move by the rolled amount
//    square += diceRoll
//} while square < finalSquare
//print("Game over!")

//if문 pass--

//Switch
let someCharacter: Character = "z"

switch someCharacter {
case "z":
    print("switch yes")
//    break 다른 언어들처럼 break를 꼭 사용해야 하지 않음 (암시적 진행을 사용하지 않음)
case "a","A": //여러 case 조건을 넣을수 있음
    print("switch no")
default:
    print("default is basic")
}










//MARK: - 5. 함수(Functions)
//MARK: - 6. 클로저(Closure)

//기본 문법
//{(prameter) -> return type in
//    statements
//}


//Swift의 표준 라이브러리에 sorted(by:)라는 알려진 타입의 배열 값을 정렬하는 메소드를 제공합니다.
//여기 by에 어떤 방법으로 정렬을 수행할 것인지에 대해 기술한 클로저를 넣으면 그 방법대로 정렬된 배열을 얻을 수 있습니다.
let sampleNames = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = sampleNames.sorted(by: backward)

//이렇게 함수로 따로 정의된 형태가 아닌 인자로 들어가 있는 형태의 클로저 : 인라인 클로저
var reversedNames2 = sampleNames.sorted { (s1: String, s2: String) -> Bool in
    return s1 < s2
}

var reversedNames3 = sampleNames.sorted { s1, s2 in
    return s1 < s2
}

var reversedNames4 = sampleNames.sorted {
    $0 > $1
}

var reversedNames5 = sampleNames.sorted(by: >)

//후위 클로져.
//함수의 마지막 인자로 클로저를 넣고 그 클로져가 길다면 후위 클로저를 사용할 수 있습니다.
//이런 형태의 함수와 클로저가 있다면.
func someFunctionThatTakesAClosure(closure: () -> Void) {
    
}

someFunctionThatTakesAClosure(closure: {
    
})

someFunctionThatTakesAClosure {
    
}

//후위 클로저를 이용해 숫자(Int)를 문자(String)로 매핑(Mapping)하는 예제를 살펴 보겠습니다.
//다음과 같은 문자와 숫자가 있습니다.
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16]

print("===> \(16 % 10)")
print("===> \(16 / 10)")

//이 값을 배열의 map(_:) 메소드를 이용해 특정 값을 다른 특정 값으로 매핑하는 클로저를 구현합니다.
let string = numbers.map { (number) -> String in
    print("number => \(number)")
    var number = number
    var output = ""
    
    repeat{
        output = digitNames[number % 10]! + output
        print("output : \(output)")
        number /= 10
        print("number : \(number)")
    } while number > 0
    
    
    return output
}


// let strings는 타입 추론에 의해 문자 배열([String])타입을 갖습니다.
// 결과는 숫자가 문자로 바뀐 ["OneSix", "FiveEight", "FiveOneZero"]가 됩니다.


//MARK: - 7. 열거형(Enumerations)
//MARK: - 8. 클래스와 구조체(Classes and Structures)
//MARK: - 9. 프로퍼티(Properties)
//MARK: - 10. 메소드(Methods)
//MARK: - 11. 서브스크립트(Subscripts)
//MARK: - 12. 상속(Inheritance)
//MARK: - 13. 초기화(Initialization)
//MARK: - 14. 초기화 해비(Deinitialization)
//MARK: - 15. 옵셔널 체이닝(Optional Chaining)
//MARK: - 16. 에러 처리(Error Handling)
//MARK: - 17. 타입 캐스팅(Type Casting)
//MARK: - 18. 중첩 타입(Nested Types)
//MARK: - 19. 익스텐션(Extensions)
// - 계산된 프로퍼티
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")
// Prints "A marathon is 42195.0 meters long"


//-이니셜라이저

//Size와 Point구조체를 정의하고 그것을 사용하는 Rect 구조체를 정의했습니다.
//Rect 구조체에서 모든 프로퍼티의 기본 값을 제공하기 때문에 Rect구조체는 기본 이니셜라이저와 멤버쪽 이니셜라이저를 자동으로 제공 받아 사용할 수 있습니다.

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var size = Size()
    var origin = Point()
}

//기본적으로 제공되는 이니셜라이저를 사용해 초기화를 한 예제입니다.
let defaultRect = Rect()
let memberwiseRect = Rect(size: Size(width: 5.0, height: 5.0), origin: Point(x: 2.0, y: 2.0))

//Rect 구조체를 추가적인 이니셜라이저를 제공하기 위해 확장 할 수 있습니다.
extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(size: size, origin: Point(x: originX, y: originY))
    }
}

//Rect에서 확장한 이니셜라이저를 사용한 코드는 다음과 같이 사용할 수 있습니다
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))



//메소드
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
    //변경가능한
    mutating func square() {
        self = self * self
    }
    
    //익스텐션을 이용해 존재하는 타입에 새로운 서브스크립트를 추가할 수 있습니다.
    //다음 예제는 Swift의 built-in 타입에 integer 서브스크립트를 추가한 예제입니다.
    //서브스크립트 [n]은 숫자의 오른쪽에서부터 n번째 위치하는 정수를 반환합니다.
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        print("\(self)")
        return (self / decimalBase) % 10
        //10 * n번째 수로 현재 수를 나눈 것의 나머지
        //1인 경우 746381295 * 10 -> 5가 나머지
        //2인 경유 746381295 * 10 -> 9가 나머지
    }
}

var someInt = 5

someInt.repetitions {
    print("test")
}

someInt.square()

10[0]
// returns 0
746381295[0]
// returns 5
746381295[1]
// returns 9
746381295[2]
// returns 2
746381295[8]
// returns 7

//만약 Int값에서 요청한 값이 처리할 수 있는 자릿 수를 넘어가면 서브스크립트 구현에서 0을 반환합니다.
746381295[9]
// 9로 처리할 수 있는 자릿 수를 넘어가면 0을 반환
0746381295[9]


//중첩 타입
//-익스텐션을 이용해 존재하는 클래스, 구조체, 열거형에 중첩 타입을 추가할 수 있습니다.
extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

//위 예제는 Int에 중첩형 enum을 추가한 예제입니다. Kind라고 불리는 열거형은 Int를 음수, 0, 양수로 표현합니다.
//아래 예제는 새로운 계산된 프로퍼티 kind를 이용해 특정 수가 음수, 0, 양수 중 어떤 것인지를 나타내는 예제입니다.

func printIntegerKinds(_ numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("- ", terminator: "")
        case .zero:
            print("0 ", terminator: "")
        case .positive:
            print("+ ", terminator: "")
        }
    }
    print("")
}
printIntegerKinds([3, 19, -27, 0, -6, 0, 7])
// Prints "+ + - 0 - 0 + "

//printIntegerKinds(_:) 함수를 Int 배열을 입력으로 받아 각 Int가 음수, 0, 양수 어디에 속하는지 계산해서 그에 맞는 기호를 반환하는 함수 입니다.



//MARK: - 20. 프로토콜(Protocols)
//MARK: - 21. 지네릭(Generics)
//MARK: - 22. 자동 참조 카운트(Automatic Reference Counting)
//MARK: - 23. 메모리 안정성(Memory Safety)
//MARK: - 24. 접근제어(Access Control)
//MARK: - 25. 고급 연산자(Advanced Operators)
//비트 연산자 - swift 에서도 여러 비트 연산자를 지원합니다.
//-비트연산자 NOT (Bitwise NOT Operator)




