import Foundation

func downloadImage(imageName: String) -> Data {
    // background
    
    // al acabar...
    return Data()
}

let chiquitoData = downloadImage(imageName: "http://")
print("jarl")

func superUtil() {
    
}

func downloadImage2(imageName: String, completion: () -> ()) {
    
}

downloadImage2(imageName: "chituito", completion: {
    print("Sa acabó")
})

downloadImage2(imageName: "chiquito") {
    print("Sa acabó")
}

typealias simpleClosure = () -> ()
func readJsonFromServer(url: String, success: simpleClosure, error: simpleClosure) {
    
}

readJsonFromServer(url: "http://", success: {
    
}, error: {
    
})










