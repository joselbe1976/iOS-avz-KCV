import Foundation

enum Operations {
    case Add
    case Subtract
    case Multiply
    case Divide
}

func calculatorOldSkool(opCode: Operations, n1: Int, n2: Int) -> Int {
    switch opCode {
    case .Add:
        return n1 + n2
    case .Subtract:
        return n1 - n2
    case .Multiply:
        return n1 * n2
    case .Divide:
        return n1 / n2
        
    }
}

calculatorOldSkool(opCode: .Add, n1: 10, n2: 20)

typealias IntegerOperation = (Int, Int) -> Int
typealias 💻 = (Int, Int) -> Int

let add: IntegerOperation = { (n1: Int, n2: Int) -> Int in
    return n1 + n2
}

add(10, 20)

let substract: IntegerOperation = { (n1: Int, n2: Int) -> Int in
    return n1 - n2
}

func calculatorCool(operation: IntegerOperation, x: Int, y: Int) -> Int {
    return operation(x, y)
}

calculatorCool(operation: add, x: 10, y: 40)
calculatorCool(operation: substract, x: 10, y: 40)
let newOp: 💻 = { (n1: Int, n2: Int) -> Int in
    return n1 * 2 + n2 * 2
}

newOp

calculatorCool(operation: newOp, x: 4, y: 40)
calculatorCool(operation:   { (n1: Int, n2: Int) -> Int in
                                return n1 * 2 + n2 * 2
                            }
                            , x: 4, y: 40)


