//
//  TabbarFirstController.swift
//  Swift-Master
//
//  Created by youngmo on 2021/06/13.
//

import UIKit

class TabbarFirstController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "첫 번째 탭"
        title.textColor = UIColor.red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        
        title.sizeToFit()   //콘텐츠의 내용에 맞게 레이블 크기 변경
        title.center.x = self.view.frame.width / 2
        
        self.view.addSubview(title)

    }

}
 
