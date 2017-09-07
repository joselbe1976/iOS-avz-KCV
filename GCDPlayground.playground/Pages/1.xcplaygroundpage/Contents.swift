import UIKit

func dp(_ s: String) {
    print("--> \( Thread.current.description )  \(s)")
}

let serialKiller = DispatchQueue(label: "Jack The Ripper")

dp("1")

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
