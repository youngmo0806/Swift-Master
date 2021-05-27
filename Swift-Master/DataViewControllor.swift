//
//  DataViewControllor.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/21.
//

import UIKit

class DataViewControllor: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var interval: UIStepper!
    @IBOutlet weak var isUpdateText: UILabel!
    @IBOutlet weak var intervalText: UILabel!
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            print("on")
            self.isUpdateText.text = "갱신함"
        }else{
            print("off")
            self.isUpdateText.text = "갱신안함"
        }
        
    }
//
    @IBAction func onStepper(_ sender: UIStepper) {
        let cnt = Int(sender.value)
        self.intervalText.text = "\(cnt) 마다"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
//        rvc.email = self.email.text!
//        rvc.update = self.isUpdate.isOn
//        rvc.interval = self.interval.value
        
        //일반 뷰컨트롤러 이동
//        self.present(rvc, animated: true, completion: nil)
        //네비게이션 컨드롤러 이동
        self.navigationController?.pushViewController(rvc, animated: true)
    }

    
    
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "MaunalSubmit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        //목적지 뷰 컨트롤러 인스턴스 읽어오기
//        let dest = segue.destination
//
//        guard let rvc = dest as? ResultViewController else {
//            return
//        }
//
//        rvc.email = self.email.text!
//        rvc.update = self.isUpdate.isOn
//        rvc.interval = self.interval.value
        
        //AppDelegate 저장 변수로 데이터 넘기기
//        let ad = UIApplication.shared.delegate as? AppDelegate
//
//        ad?.paramEmail = self.email.text!
//        ad?.paramUpdate = self.isUpdate.isOn
//        ad?.paramInterval = self.interval.value

        //UserDefault 로 저장해보기
        let ud = UserDefaults.standard
        
        ud.set(self.email.text , forKey: "email")
        ud.set(self.isUpdate.isOn , forKey: "update")
        ud.set(self.interval.value , forKey: "interval")
        
    }
}
