//
//  CustomViewController.swift
//  Swift-Master
//
//  Created by youngmo on 2021/06/10.
//

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //버튼을 생성하고, 속성을 설정한다.
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.setTitle("테스트 버튼", for: .normal)
        
        //버튼을 수평 중앙 정렬한다.
        btn.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        
        //루트 뷰에 버튼을 추가 한다.
        self.view.addSubview(btn)
        
        //버튼의 이벤트와 메소드를 연결한다.
        btn.addTarget(self, action: #selector(btnClick(_:)), for: .touchUpInside)
    }
    

    @objc func btnClick(_ sender: Any) {
        //호출한 객체가 버튼이면
        if let btn = sender as? UIButton {
            btn.setTitle("클릭되었습니다", for: .normal)
        }
        
        
    }

}
