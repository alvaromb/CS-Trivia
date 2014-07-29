/** 
 * Find the only different number in two unsorted arrays
 * [1, 2, 6, 8, 4, 2, 5, 345]
 * [2, 5, 345, 8, 3, 2, 1, 6, 4]
 */

import Cocoa

let first   = [1, 2, 6, 8, 4, 2, 5, 345]
let second  = [2, 5, 345, 8, 3, 2, 1, 6, 4]

var firstCount = 0
for number in first {
    firstCount += number
}

var secondCount = 0
for number in second {
    secondCount += number
}

println("Different number = \(secondCount - firstCount)")