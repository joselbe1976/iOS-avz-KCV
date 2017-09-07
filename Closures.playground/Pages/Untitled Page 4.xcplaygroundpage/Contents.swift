import Foundation

let concatNameAndSurname = { (s1: String, s2: String) -> String in
    return s1 + s2
}

concatNameAndSurname("Diego ", "Freniche")

let cityAndStreetName = concatNameAndSurname

cityAndStreetName("Seville", "Sierpes")
cityAndStreetName

typealias StringJoiner = (String, String) -> String

let cityAndFutbolTeam: StringJoiner = concatNameAndSurname

cityAndFutbolTeam("Sevilla", "Betis")

let n1 = 3
let n2 = 5

let result = n1 + n2


// opc1
var isError: Bool = false
func downloadFromInternet(url: String) -> String {
    isError = true
    return "JSON"
}

// opc 2

struct Response {
    let isError: Bool
    let json: String
}

func downloadFromInternet2(url: String) -> Response {
    return Response(isError: true, json: "JSON")
}

downloadFromInternet2(url: "http://").json

// opc 3


func downloadFromInternet3(url: String) -> (isError: Bool, json: String) {
    return (isError: true, json: "JSON")
}
downloadFromInternet3(url: "http://").json

