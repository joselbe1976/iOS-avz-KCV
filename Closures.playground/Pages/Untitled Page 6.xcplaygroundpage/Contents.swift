import Foundation

// hsadkhak

/*:
 
 # Title
 ## Subtitle
 
 - one
 - two
 - three
 
 1. one
 1. three
 1. two
 
 ![](https://geekleagueofamerica.com/wp-content/uploads/2014/05/sad-batman-meme-batfleck-09.jpg)
 
 ![Link](http://geekleagueofamerica.com/wp-content/uploads/2014/05/sad-batman-meme-batfleck-09.jpg)
 
 
 */


func createCounter() -> (Int) -> Int {
    func inc1(n: Int) -> Int {
        return n + 1
    }
    
    return inc1
}

let count = createCounter()
count(1)

createCounter()(2)

let marxBrothers = ["Chicco", "Harpo", "Zeppo", "Groucho"]
let cities = ["El Ferrol", "Murcia", "Palencia", "Teruel", "Camas", "Bollullos de la Mitación"]

func selectSortMethod(a: [String]) -> ([String]) -> ([String]) {
    func orderBigArray(a: [String]) -> [String] {
        return a.sorted()
    }
    
    func orderSmallArray(a: [String]) -> [String] {
        // imaginemos que son distintas
        return a.reversed()
    }
    
    if a.count > 4 {
        return orderBigArray
    }
    return orderSmallArray
}


selectSortMethod(a: marxBrothers)(marxBrothers)

selectSortMethod(a: cities)(cities)
selectSortMethod(a: cities)(marxBrothers)















