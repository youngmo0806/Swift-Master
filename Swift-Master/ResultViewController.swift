//
//  ResultViewController.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultEmail: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultInterval: UILabel!
    
    
    var email: String = ""
    var update: Bool = false
    var interval: Double = 0
    
    override func viewDidLoad() {
        
        self.resultEmail.text = self.email
        self.resultUpdate.text = (self.update == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(interval))분마다 갱신"
        
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
