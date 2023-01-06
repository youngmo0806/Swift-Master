import UIKit


//codable -> jsom 이라고 생각하자



let jsonFromServer = """
{
    "nick_name": "개발하는 정영모",
    "job":"모바일 개발자",
    "user_name":"youngmo"
}
"""


//de code = 제이슨을 클래스, 스트럭트로 바꾸기
//en code = 제이슨으로 만들기

// EnCodable & Decodable => 합친걸 Codable 이라고 한다.

struct User: Decodable {
    var nickName: String?
    var job: String?
    var myUserName: String?
    
    enum CodingKeys: String, CodingKey {
        case nickName = "nick_name"
        case job
        case myUserName = "user_name"
    }
    
    static func getUserFromJson(_ jsonString: String) -> Self? {
        
        guard let jsonData: Data = jsonString.data(using: .utf8) else {
            return nil
        }
        
        do{
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            print("jsonData : \(user)")
            return user
        }catch{
            print("에러발생: \(error.localizedDescription)")
            return nil
        }
    }
}


let user = User.getUserFromJson(jsonFromServer)


