import Foundation

func dp(_ s: String) {
    print("--> \( Thread.current.description )  \(s)")
}

let queue = OperationQueue()

queue.addOperation {
    dp("1")
}

queue.addOperation {
    dp("2")
}

queue.addOperation {
    dp("3")
}

class MyOp: Operation {
    let url: String
    init(url: String) {
        self.url = url
    }
    
    override func main() {
        dp("Inside operation downloading " + self.url)
    }
}

let op1 = MyOp(url: "http///khkd")
let op2 = MyOp(url: "lkjljl")
let op3 = MyOp(url: "jlkjlj")

queue.addOperations([op1, op2, op3], waitUntilFinished: false)
