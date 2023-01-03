import UIKit

//Error
//enum type 으로 만들수 있다.

enum MismatchError: Error {
    case nameMismatch
    case number
}


func guessMyName(name input: String) throws {
    print("#function - \(#function)")
    
    if input != "정영모" {
        print("틀렸다.")
        throw MismatchError.nameMismatch
    }
    print("맞았다")
    
}


/// 반환형이 있는 에러처리
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(number input: Int) throws -> Bool {
    print("#function - \(#function)")
    
    if input != 10 {
        print("틀렸다.")
        throw MismatchError.nameMismatch
    }
    
    print("맞았다")
    
    return true
}



//에러 처리 없이 끝내고 싶다
//try? guessMyName(name: "정영")

//에러 잡기
do {

    try guessMyName(name: "정영")
    
} catch {
    
    print("잡은 에러 : \(error)")
    
}

print("-----------------")

do {

    let receivedValue = try guessMyNumber(number: 10)
    
} catch {
    
    print("잡은 에러 : \(error)")
    
}
