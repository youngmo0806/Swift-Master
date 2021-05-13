//
//  Sendable.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/13.
//

import UIKit
//보내기
//무언가 발신할 수 있는 기능
protocol Sendable {
    var from: Sendable { get }
    var to: Receiveable? { get }
    
    func send(data: Any)
    
    static func isSendableInstance(_ instance: Any) -> Bool
}
