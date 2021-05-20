//
//  Message.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/13.
//

import UIKit
//수신, 발신이 가능한 Message 클래스
class Message: Sendable, Receiveable {
    
    //발신은 발신 가능한 객체, 즉 Sendable 프로토콜을 준수하는 타입의 인스턴스여야 합니다.
    var from: Sendable {
        return self
    }
    
    //상대방은 수신 가능한 객체, 즉 Receiveable 프로토콜을 준수하는 타입의 인스턴스여야 합니다.
    var to: Receiveable?
    
    //메시지를 발신합니다. 보낸다
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }
        
        //수신 가능한 인스턴스의 received 메서드를 호출합니다.
        receiver.received(data: data, from: self.from)
    }
    
    //메시지를 수신합니다.
    func received(data: Any, from: Sendable) {
            print("Message received \(data) from \(from)")
    }
    
    //class 메서드 이므로 상속이 가능합니다.
    class func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}


//수신, 발신이 가능한 Mail 클래스
class Mail: Sendable, Receiveable {
    
    //발신은 발신 가능한 객체, 즉 Sendable 프로토콜을 준수하는 타입의 인스턴스여야 합니다.
    var from: Sendable {
        return self
    }
    
    //상대방은 수신 가능한 객체, 즉 Receiveable 프로토콜을 준수하는 타입의 인스턴스여야 합니다.
    var to: Receiveable?
    
    //메시지를 발신합니다. 보낸다
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }
        
        //수신 가능한 인스턴스의 received 메서드를 호출합니다.
        receiver.received(data: data, from: self.from)
    }
    
    //메시지를 수신합니다.
    func received(data: Any, from: Sendable) {
            print("Message received \(data) from \(from)")
    }
    
    //class 메서드 이므로 상속이 가능합니다.
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}
