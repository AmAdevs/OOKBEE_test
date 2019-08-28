// Ananchai Mankhong

import UIKit

var numbers: [Int] = [1, 8, 2, 6, 5, 3, 5, 0, 9, 89]


func GetMaxTwo(_ number: [Int]) -> [Int] {
    var valueOfMax1 = 0
    var valueOfMax2 = 0
    
    
    for i in number {
        // check value in number condition if  greater than in initial valueOfMax1 value
        if i > valueOfMax1 {
            // in first condition to recive valueOfMax2 when found new greater than value for second max value
            valueOfMax2 = valueOfMax1
            // recive max value to valueOfmax1 for first max value
            valueOfMax1 = i
        } else if i > valueOfMax2 {
            // in second condition to recive valueOfMax2 when got max value to valueOfMax1
            valueOfMax2 = i
        }
    }
    // return first max value and second max value
    return [valueOfMax1, valueOfMax2]
}

print(GetMaxTwo(numbers))
