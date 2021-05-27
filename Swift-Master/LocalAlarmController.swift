//
//  LocalAlarmController.swift
//  Swift-Master
//
//  Created by youngmo on 2021/05/27.
//

import UIKit

class LocalAlarmController: UIViewController {
    
    @IBOutlet weak var msg: UITextField!
    @IBOutlet weak var datepicker: UIDatePicker!
    
    
    
    @IBAction func save(_ sender: Any) {
        
        if #available(iOS 10.0, *){
            //UserNotification 프레임워크를 사용한 로컬알림
            
            if #available(iOS 10.0 , *){    //UserNotification 프레임워크를 이용한 로컬 알림(iOS10 이상)
             
                //알림 동의 여부를 확인
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    
                    if settings.authorizationStatus == UNAuthorizationStatus.authorized {

                        DispatchQueue.main.async {
                            //알림 콘텐츠 객체
                            let nContent = UNMutableNotificationContent()
                            nContent.title = "미리알림"
                            nContent.body = (self.msg.text)!
                            nContent.sound = UNNotificationSound.default
                            
                            //발송 시각을 '지금으로 부터 *초 형식'으로 변환
                            let time = self.datepicker.date.timeIntervalSinceNow
                            
                            //발송 조건 정의
                            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                            
                            //발송 요청 객체 정의
                            let request = UNNotificationRequest(identifier: "alarm", content: nContent, trigger: trigger)
                            
                            //노티피케이션 센터에 추가
                            UNUserNotificationCenter.current().add(request) { (_) in
                                DispatchQueue.main.async {
                                    //발송 완료 안내 메시지창
                                    let date = self.datepicker.date.addingTimeInterval(9*60*60)
                                    let message = "알림이 등록되었습니다. 등록된 알림은 \(date)에 발송됩니다."
                                    
                                    let alert = UIAlertController(title: "알림등록", message: message, preferredStyle: .alert)
                                    let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
                                    
                                    alert.addAction(ok)
                                    
                                    self.present(alert, animated: false, completion: nil)
                                }
                            }
                        }
  

                    } else {

                        let alert = UIAlertController(title: "알림 등록", message: "알림이 혀용되지 않았습니다.", preferredStyle: .alert)
                        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
                        alert.addAction(ok)
                        self.present(alert, animated: false, completion: nil)
                        return
                        
                    }
                    
                }
            }
            
            
            
        }else{
            //LocalNotification 객체를 사용한 로컬알림
        }
        
        
    }
}
