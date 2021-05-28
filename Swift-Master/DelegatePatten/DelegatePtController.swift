//
//  DeletePt.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/28.
//

import UIKit

class DelegatePtController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        
        //텍스트 필드 속성 설정
        self.tf.placeholder = "값을 입력하세요"    //안내메시지
        self.tf.keyboardType = UIKeyboardType.alphabet  //키보드 타입 영문자 패드로
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark  //키보드 스타일 어둡게
        self.tf.returnKeyType = UIReturnKeyType.join    //리턴키 타입은 "Join"
        self.tf.enablesReturnKeyAutomatically = true    //리턴키 자동활성화 "On"
        
        /**
         *  스타일 설정
         */
        // 테두리 스타일 - 직선
        self.tf.borderStyle = UITextField.BorderStyle.line
        
        //배경색상
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0)
        
        //수직방향으로 텍스트가 가운데 정렬되도록
        self.tf.contentVerticalAlignment = .center
        
        //수평방향으로 텍스트가 가운데 정렬되도록
        self.tf.contentHorizontalAlignment = .center
        
        //테두리 색상을 회색으로
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        
        //테두리 두께 설정(단위:pt)
        self.tf.layer.borderWidth = 2.0
        
        self.tf.becomeFirstResponder()
        
        self.tf.delegate = self
        
        
        
        
    }
    
    @IBAction func input(_ sender: Any) {
        self.tf.becomeFirstResponder()
    }
    
    @IBAction func conFirm(_ sender: Any) {
        self.tf.resignFirstResponder()
    }
}
