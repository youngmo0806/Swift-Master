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

























//MARK: - 2. 문자열과 문자(Strings and Characters)
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
