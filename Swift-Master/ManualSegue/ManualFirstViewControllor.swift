//
//  ManualFirstViewControllor.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/20.
//

import UIKit

class ManualFirstViewControllor: UIViewController {
    
    @IBAction func wind(_ sender: Any) {
        
        self.performSegue(withIdentifier: "ManualWind", sender: self)
        
    }
    
    
}
