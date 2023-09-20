import UIKit

func evenNumbers(n: Int) -> Int {
    var start:Int = -2
    if n != 0 {
        start += n * 2
    } else {
        print("Zero is not a valid input")
    }
    return start
}

let answer = evenNumbers(n: 4)
print(answer)
