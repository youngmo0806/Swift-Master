//
//  MessageViewController.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/25.
//

import UIKit

class MessageViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func alert(_ sender: Any) {
        
        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .alert)
        
    }
}
