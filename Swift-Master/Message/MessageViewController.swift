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
//        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel){ (_) in
            self.result.text = "취소를 눌러네잉"
        }
        
        let ok = UIAlertAction(title: "확인", style: .default) { _ in
            self.result.text = "확인을 눌렀어유"
        }
        
        let exec = UIAlertAction(title: "실행", style: .default) { aa in
            self.result.text = "실행을 눌렸슈"
            print("value : \(aa)")
        }
        
        let stop = UIAlertAction(title: "중지", style: .default)
        
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        self.present(alert, animated: true, completion: nil)
    }
}
