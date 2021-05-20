
//  SecondNavigationController.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/20.
//

import UIKit

class SecondNavigaionController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        
        
//        dismiss(animated: true, completion: nil)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func back2(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
