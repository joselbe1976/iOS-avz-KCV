import Foundation

func ripley(spaceShip: String) {
    var name = "Ripley"
    
    if name == "pepe" {
        
    }
    
    func alien() {
        let alienName = "Alien 547"
        // name = "hehe"
        print("Destroy \( name ) my names is \( alienName ) in ship: \( spaceShip) ")
    }
    
    let alienClosure = { () -> Void in
        let alienName = "Alien 547"
        print("Destroy \( name ) my names is \( alienName ) in ship: \( spaceShip) ")
    }
    let otherAlienClosure = alienClosure
    
    alienClosure()
    alienClosure()
    name
    otherAlienClosure()
    otherAlienClosure
    
    // background
    alien()
    
    print("-----")
    
    alien()
    
}

ripley(spaceShip: "Nostromo")
ripley(spaceShip: "Slave I")
