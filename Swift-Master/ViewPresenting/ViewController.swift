//
//  ViewController.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SeCondVC") else {
            return
        }
        
        vc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        self.present(vc, animated: true) {
            print("이동 할게요")
        }
    }
    
}

