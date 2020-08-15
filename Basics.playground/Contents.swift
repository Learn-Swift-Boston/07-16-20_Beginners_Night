import UIKit

var str = "Hello, playground"
var helloStream = "Hello, Stream!"

str = "it's a cool night in Boston"
helloStream = "i had to close my windows"

var count: Int = 0

for number in 0..<10 {
    print("count = \(count)")
    count += number
}


class SomeClass { }
struct SomeStruct { }

func multiply(num1: Int, num2: Int) -> Int {
    let result = num1 * num2
    return result
}

multiply(num1: 1000, num2: 10)

func incrementCount() {
    count += 1
}

incrementCount()
count


func multiply2(_ num1: Int, by num2: Int) -> Int {
    return num1 * num2
}

multiply2(6, by: 10)


Float.greatestFiniteMagnitude
