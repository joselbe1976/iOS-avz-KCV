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
        
        // self.performSelector(onMainThread: #selector(MyOp.executeThisOnMain), with: nil, waitUntilDone: false)
        executeThisOnMain()
    }
    
    //@objc
    func executeThisOnMain() {
        OperationQueue.main.addOperation {
            dp(" Back to main")
        }
    }
}

extension Operation {
    func addDependenciesSoCool(op: Operation) -> Operation {
        self.addDependency(op)
        return self
    }
}

let op1 = MyOp(url: "http///khkd - 1")
let op2 = MyOp(url: "lkjljl - 2")
let op3 = MyOp(url: "jlkjlj - 3")

op2.addDependenciesSoCool(op: op1).addDependenciesSoCool(op: op3)


queue.addOperations([op1, op2, op3], waitUntilFinished: false)

