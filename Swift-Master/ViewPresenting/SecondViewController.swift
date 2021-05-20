//
//  Second.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        
        self.presentingViewController?.dismiss(animated: true, completion: {
            print("되돌아 갑니다.")
        })
    }
}
