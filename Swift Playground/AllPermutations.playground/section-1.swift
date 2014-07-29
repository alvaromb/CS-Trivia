/**
 * Write code to generate all possible case combinations of a given 
 * lower-cased string. (e.g. "0ab" -> ["0ab", "0aB", "0Ab", "0AB"])
 */

import Cocoa

let string = "0abc"

// Recursive version with duplicate check
func combinations(string : String) -> [String] {
    if countElements(string) == 1 {
        return [string, string.uppercaseString]
    }
    let start = advance(string.startIndex, 0)
    let end = advance(start, 1)
    let char = string[Range(start: start, end:end)]
    
    let subStart = advance(string.startIndex, 1)
    let subEnd = advance(subStart, countElements(string) - 1)
    var result: [String] = []
    for substring in combinations(string[Range(start: subStart, end: subEnd)]) {
        result.append(char + substring)
        if char != char.uppercaseString {
            result.append(char.uppercaseString + substring)
        }
    }
    return result
}
println("Combinations \(combinations(string))")