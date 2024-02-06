import UIKit

func fibonacci (n: Int) -> Int {
    var number1 = 1
    var number2 = 1
    
    for n in 0 ..< n-2 {
        let number = number1 + number2
        number1 = number2
        number2 = number
    }
    
    return number2
}
//fibonacci(n: 6)

func fibonacci2 (n: Int) -> Int {
    guard n > 1 else {return n}
    return fibonacci2(n: n-1) + fibonacci2(n: n-2)
}
//fibonacci2(n: 7)

func fibonacci3 (n: Int) -> Int {
    return n > 1 ? (fibonacci3(n: n - 1) + fibonacci3(n: n - 2)) : n
}
fibonacci3(n: 7)

//проверка производительности
func timeMeasureRunningCode (title: String, operationBlock: () -> Void) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operationBlock()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time for \(title): \(timeElapsed)")
}

timeMeasureRunningCode(title: "Fibonacci1"){
    fibonacci(n: 20)
}

timeMeasureRunningCode(title: "Fibonacci2"){
    fibonacci2(n: 20)
}

timeMeasureRunningCode(title: "Fibonacci3"){
    fibonacci3(n: 20)
}
