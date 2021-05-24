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
    
    
//    var email: String = ""
//    var update: Bool = false
//    var interval: Double = 0
    
    override func viewDidLoad() {
        
        //AppDelegate 를 이용한 방법
//        let ad = UIApplication.shared.delegate as? AppDelegate
//
//        if let email = ad?.paramEmail {
//            self.resultEmail.text = email
//        }
//
//        if let update = ad?.paramUpdate {
//            self.resultUpdate.text = (update  == true ? "자동갱신" : "자동갱신안함")
//        }
//
//        if let interval = ad?.paramInterval {
//            self.resultInterval.text = "\(Int(interval))분마다 갱신"
//        }
        
        //UserDefalut 를 이용하는 방법
        let ud = UserDefaults.standard
        //UserDefaluts 객체는 String 타입만 옵셔널로 넘어 온다.
        
        if let email = ud.string(forKey: "email") {
            self.resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "update")
        self.resultUpdate.text = (update == true ? "자동갱신" : "자동갱신안함")
        
        let interval = ud.double(forKey: "interval")
        self.resultInterval.text = "\(Int(interval))분 마다 갱신"
                
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
