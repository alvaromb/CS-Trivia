// Playground - noun: a place where people can play

import Cocoa

let anagrams = ["art", "rat", "bats", "banana", "stab", "tar"]

var anagramDictionary = Dictionary<String, [String]>()

for anagram in anagrams {
    // Separate the anagram into an array of characters
    var anagramArray: [String] = []
    for char in anagram {
        anagramArray.append("\(char)")
    }
    
    // Sort the array to create the hash key
    anagramArray.sort({$0 < $1})
    let hashKey = "".join(anagramArray.map({"\($0)"}))
    
    // Insert the anagram inside the dictionary
    if var existingAnagrams = anagramDictionary[hashKey] {
        existingAnagrams.append(anagram)
        anagramDictionary[hashKey] = existingAnagrams
    } else {
        anagramDictionary[hashKey] = [anagram]
    }
}

println("Anagrams \(anagramDictionary)")
