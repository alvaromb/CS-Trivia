// Álvaro Medina Ballester, 2014

import Cocoa

/**
 * Given a inputString, find the longest palindrome inside it.
 * Simple version, we just have to loop through all the possible
 * centers and try to find the biggest palindrome with that center.
 */

let inputString = "abcbabcbabcba" //"abababa"
let inputNSString = inputString as NSString

let seqLen = countElements(inputString)
let centers = (seqLen * 2) + 1
var palindromeLengths: Int[] = []
var longestPalindromeLength = 0
var longestPalindrome = ""

for index in 0..centers {
    var leftIndex = index/2 - 1
    var rightIndex = index - index/2 // Integer division alternate: Int(ceil(Double(index)/Double(2)))
    var palindromeLength = index%2
    while leftIndex >= 0 && rightIndex < seqLen && Array(inputString)[leftIndex] == Array(inputString)[rightIndex] {
        leftIndex--
        rightIndex++
        palindromeLength += 2
    }
    if palindromeLength > longestPalindromeLength {
        longestPalindrome = inputNSString.substringWithRange(NSMakeRange(leftIndex+1, rightIndex+1))
        longestPalindromeLength = palindromeLength
    }
    palindromeLengths.append(palindromeLength)
}

println("Palindrome Lengths \(palindromeLengths)")
println("Longest palindrome '\(longestPalindrome)'")