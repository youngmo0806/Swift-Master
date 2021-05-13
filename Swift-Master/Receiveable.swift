//
//  Receiveable.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/13.
//

import UIKit
//받기
//무언가 수신받을 수 있는 기능
protocol Receiveable {
    func received(data: Any, from: Sendable)
}
