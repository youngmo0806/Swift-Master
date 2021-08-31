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


















//MARK: - 3. 콜렉션 타입(Collection Types)
//MARK: - 4. 제어문(Control Flow)
//MARK: - 5. 함수(Functions)
//MARK: - 6. 클로저(Closure)
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
