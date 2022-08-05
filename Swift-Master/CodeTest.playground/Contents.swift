import UIKit
import Foundation


//var input = [1,2,7,6,4]
var input = [1,2,3,4]
//var input = [9, 8, 7, 6, 5, 4, 3, 2, 1]
solution(input)

//개수를 구하는 문제임.
func solution(_ nums:[Int]) -> Int {
    
    //소수 구하기
    func calc(sum:Int) -> Bool{
        
        var flag: Bool = true
        
        for sosu in 2..<sum {
            
            if sum  % sosu == 0 {
                
                flag = false
            }
        }
        
        return flag
    }
    
    var answer = 0

    for i in 0..<nums.count {
        
        for j in i+1..<nums.count {
            
            for k in j+1..<nums.count {
                
                let sum = nums[i]+nums[j]+nums[k]
                
                if calc(sum: sum) {
                    answer += 1
                    print("\(nums[i])+\(nums[j])+\(nums[k]) = \(sum) 은 소수 입니다.")
                }else{
                    print("\(nums[i])+\(nums[j])+\(nums[k]) = \(sum) 은 소수가 아닙니다.")
                }

            }
        }
    }

    return answer

}



//for test in input.enumerated(){
//    print(test)
//    print(test.element)
//}

//
//
//let test = input.map{$0 + 1}
//print(test)
