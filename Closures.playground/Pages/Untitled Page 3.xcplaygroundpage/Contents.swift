import Foundation

func n10(n: Int) -> Int {
    return n * 10
}

n10(n: 4)

let c10 = { (n: Int) -> Int in
    return n * 10
}

let c11: (Int) -> Int = c10
let c12 = c10

c11(5)
c12(6)

let c13 = n10

c13
c13(10)
