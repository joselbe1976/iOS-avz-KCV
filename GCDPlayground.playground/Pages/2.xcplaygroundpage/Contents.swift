import UIKit

func dp(_ s: String) {
    print("--> \( Thread.current.description )  \(s)")
}

let serialKiller = DispatchQueue(label: "Jack The Ripper")
let serialKiller2 = DispatchQueue(label: "Dexter", qos: .userInteractive, attributes: DispatchQueue.Attributes.concurrent, autoreleaseFrequency: DispatchQueue.AutoreleaseFrequency.never, target: nil)

dp("1")

serialKiller2.async {
    let a = ["jkhddk"]
    for _ in 0...10 {
        dp("Dexter doing dexter things")
    }
    // [a release];
}

serialKiller.async {
    for _ in 0...10 {
        dp("Killing person number one")
    }
}

dp("2")

serialKiller.async {
    for _ in 0...10 {
        dp("Killing time")
    }
}
dp("3")

