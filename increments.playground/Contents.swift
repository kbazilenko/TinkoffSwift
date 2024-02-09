import UIKit

func makeIncrementer() -> (Int) -> Void {
    var counter = 0
    
    func increment(arg: Int) {
        counter += arg
        print(counter)
    }
    
    return increment
}

let incrementer = makeIncrementer()
incrementer(2)
incrementer(3)
