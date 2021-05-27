//
//  AppDelegate.swift
//  Swift-Master
//
//  Created by kbins on 2021/05/04.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //값을 저장할 변수를 정의
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramInterval: Double?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if #available(iOS 10.0, *) {
            //경고창, 배지, 사운드를 사용하는 알림 환경 정보를 생성하고, 사용자 동의 여부 창을 실행
            let notiCenter = UNUserNotificationCenter.current()
            notiCenter.requestAuthorization(options: [.alert, .badge, .sound]) { didAllow, e in
                
                if didAllow {
                    print("알림수락?")
                }else{
                    print("알림거부?")
                }
                
            }
            
        } else {
            
        }
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        
        if #available(iOS 10.0 , *){    //UserNotification 프레임워크를 이용한 로컬 알림(iOS10 이상)
         
            //알림 동의 여부를 확인
            UNUserNotificationCenter.current().getNotificationSettings { settings in
                
                if settings.authorizationStatus == UNAuthorizationStatus.authorized {
                    //알림 콘텐츠 객체
                    let nContent = UNMutableNotificationContent()
                    nContent.badge = 2
                    nContent.title = "로컬 알림 메시지"
                    nContent.subtitle = "준비된 내용이 아주 많아요! 얼른 다시 앱을 열어주세요"
                    nContent.body = "앗! 왜 나갔어요?? 어서 들어 오세요"
                    nContent.sound = UNNotificationSound.default
                    nContent.userInfo = ["name" : "홍길동"]
                    
                    //알림 발송 조건 객체
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                    
                    //알림 요청 객체
                    let request = UNNotificationRequest(identifier: "wakeup", content: nContent, trigger: trigger)
                    
                    //노티피케이션 센터에 추가
                    UNUserNotificationCenter.current().add(request)
                } else {
                    print("사용자가 동의하지 않음")
                }
                
            }
        }
        
    }
}
