import UIKit

struct MyPet {
    
    
    public var title: String = "타이틀 없음"
    
    //MyPet 내부에서는 변경가능하지만 바깥에서는 변경을 할수 없다.
    private(set) var name: String = "이름없음"
    
    mutating func setName(to newName: String) {
        self.name = newName
    }
}


var myPet = MyPet()
myPet.name
myPet.title

//myPet.name = "정영모"
myPet.title = "타이틀변경"
myPet.title





