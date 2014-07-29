/**
 * Longest common prefix for a given array of words
 */

import Cocoa

let strings = ["abba", "abracadabra", "abort", "abigail"]
let numberOfWords = countElements(strings)
var lcp = ""

var i = 0
for char in strings[0] {
    var occurrences = 0
    for word in strings {
        if i < countElements(word) && char == Array(word)[i] {
            occurrences++
        }
    }
    if occurrences == numberOfWords {
        lcp += char
    }
    i++
}

println("Longest common prefix \(lcp)")