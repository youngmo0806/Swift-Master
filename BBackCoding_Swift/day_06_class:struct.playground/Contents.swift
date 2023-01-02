import UIKit

//class 와 struct
/*
 struct - 값 복사
 */
print("------------- struct ------------")
struct YoutubeStruct {
    var name: String
    var subscribersCount: Int
}

var devJung = YoutubeStruct(name: "정영모", subscribersCount: 9999)

var devJungClone = devJung

print("값 넣기 전 devJungClone.name: \(devJungClone.name)")

devJungClone.name = "호롤로롤"

print("값 넣기 후 devJungClone.name: \(devJungClone.name)")
print("값 넣기 후 devJung.name: \(devJung.name)")

///////////////////////////////////////////////////////////////////////////

print("------------- class ------------")
/*
 class - 값 참조, 생성자를 만들어 줘야 한다.
 서로 연결이 되어 있어서 변경하면 싹 바뀐다고 생각.
 */
 
class YoutubeClass {
    var name: String
    var subscribersCount: Int
    
    //생성자 - 즉 메모리에 올린다.
    //init 으로 매개변수를 가진 생성자 메소드를 만들어야
    //매개변수를 넣어서 그 값을 가진 객체를 만들수 있다.
    init(name: String, subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var devYoungmo = YoutubeClass(name: "정땡모", subscribersCount: 9999)

var devYoungmoClone = devYoungmo

print("값 넣기 전 devYoungmoClone.name : \(devYoungmoClone.name)")

devYoungmoClone.name = "정혜은"

print("값 넣기 후 devYoungmoClone.name : \(devYoungmoClone.name)")

print("값 넣기 후 devYoungmo.name : \(devYoungmo.name)")
