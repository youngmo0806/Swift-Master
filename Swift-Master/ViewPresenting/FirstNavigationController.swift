//
//  FirstNavigationController.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/20.
//

import UIKit

class FirstNavigationController: UIViewController {
    
    @IBAction func moveByNavi(_ sender: Any) {
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecVC") else {
            return
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func movePresent(_ sender: Any) {
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecVC") else {
            return
        }
        
        self.present(vc, animated: true, completion:    nil)
    }
}
