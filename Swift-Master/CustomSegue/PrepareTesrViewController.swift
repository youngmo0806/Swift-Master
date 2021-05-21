//
//  PrepareTesrViewController.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/21.
//

import UIKit

class PrepareTestViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let se = segue.identifier else {
            return
        }
        
        if (se == "custom_segue") {
            
            print("custom_segue 실행")
            
        }else if(se == "action_segue"){
            
            print("action_segue 실행")
            
        }else{
            
            print("알수없는 세그가 실행되었습니다.")
            
        }
        
    }
    
}
