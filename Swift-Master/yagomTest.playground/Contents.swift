import UIKit
//protocol
//특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의합니다.

//protocol 프로토콜 이름 {
//    프로토콜 정의
//}

protocol SomeProtocol {
    var settableProperty: String { get set }
    var notNeedToBeSettableProperty: String { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
    static var anotherTypeProperty: Int { get }
}

//-----------------------------------------------------------------------

//protocol Sendable {
//    var from: String { get }
//    var to: String { get }
//}
//
//class Message: Sendable {
//
//    var sender: String
//    var from: String {
//        return self.sender
//    }
//
//    var to: String
//
//    init(sender: String, receiver: String) {
//        self.sender = sender
//        self.to = receiver
//    }
//
//}
//
//class Mail: Sendable {
//    var from: String
//    var to: String
//
//    init(sender: String, receiver: String) {
//        self.from = sender
//        self.to = receiver
//    }
//}


//-----------------------------------------------------------------------

////무언가 수신받을 수 있는 기능
//protocol Receiveable {
//    func received(data: Any, from: String)
//}
//
////무언가 발신할 수 있는 기능
//protocol Sendable {
//    var from: Sendable { get }
//    var to: Receiveable? { get }
//    
//    func send(data: Any)
//    
//    static func isSendableInstance(_ instance: Any) -> Bool
//}
//
////수신, 발신이 가능한 Message 클래스
//class Message: Sendable, Receiveable {
//    
//    //발신은  발신 가능한 객체, 즉 Sendable 프로토콜을 준수하는 타입의 인스턴스여야 합니다.
//    var from: Sendable {
//        return self
//    }
//    
//    var to: Receiveable?
//    
//    func send(data: Any) {
//        <#code#>
//    }
//    
//    static func isSendableInstance(_ instance: Any) -> Bool {
//        <#code#>
//    }
//    
//    
//    
//    
//    func received(data: Any, from: String) {
//        <#code#>
//    }
//    
//    
//}
