import UIKit

func dp(_ s: String) {
    print("--> \( Thread.current.name )  \(s)")
}


let parallelKiller = DispatchQueue(label: "Dexter", attributes: DispatchQueue.Attributes.concurrent)

dp("1")

for _ in 0...10 {
parallelKiller.async {
    for _ in 0...10 {
        dp("🙈")
    }
}
}
parallelKiller.async {
    for _ in 0...10 {
        dp("💾")
    }
}

parallelKiller.async {
    for _ in 0...10 {
        dp("😈")
    }
}



let s: String? = "niljksdhhdsk"
print(s == nil ? "-" : s!)
