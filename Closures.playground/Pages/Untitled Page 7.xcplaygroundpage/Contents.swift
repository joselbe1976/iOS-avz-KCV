import UIKit
import Foundation

// map, reduce, filter

let basket = ["🍏", "🍐", "🍋" , "🍑", "🍓", "🍋"]

// filter == SELECT SQL

// filter by hand a manubrio

var result = [String]()
for fruit in basket {
    if fruit == "🍋" {
        result.append(fruit)
    }
}

// result.removeAll()

result

// filter v1
basket.filter({ (s: String) -> Bool in
    return s == "🍋"
})

// filter v2
basket.filter { $0 == "🍋" }
basket.filter { $0 != "🍋" }


// map == UPDATE
// map: pelar --> pela todas las frutas
// map: trocear

basket.map { (e: String) -> String in
    return e + "🔪"
}
basket.map { (e: String) -> Int in
    return e.lengthOfBytes(using: String.Encoding.utf8)
}

let urls = [
    "http://geekleagueofamerica.com/wp-content/uploads/2014/05/sad-batman-meme-batfleck-09.jpg",
    "http://www.microsiervos.com/images/YesWeJarl.jpg",
    "http://www.microsiervos.com/images/YesWeJarl.jpg"

]

let imgs = urls.map {
    URL(string: $0)!
}.map {
    do {
        return try Data(contentsOf: $0)
    } catch {}
    return Data()
}.map {
    UIImage(data: $0)
}



imgs


// reduce == funciones agregadas SQL (AVG, SUM, MAX)
basket

let marx = ["123", "1234", "hh"]
marx.reduce(-10) {
    $0 + $1.lengthOfBytes(using: String.Encoding.utf8)
}

let numbers = [45, 65, 18, 72, 87]
numbers.reduce(0) {
    $0 + $1
}

// it1 - $0 == 0, $1 == 45 result = 0 + 45
// it2 - $0 == 45, $1 == 65 result = 45 + 65
// it3 - $0 == 110, $1 == 18 result = 110 + 18

import Swift
func pepe(n1: Int, n2: Int) -> Int {
    return n1 * n2
}
numbers.reduce(0, +)
numbers.reduce(1, pepe)

marx.reduce("", +)

