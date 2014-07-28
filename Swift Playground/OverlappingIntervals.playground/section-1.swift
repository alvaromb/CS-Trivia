// Playground - noun: a place where people can play

import Cocoa

var intervals: [[Int]] = [[1, 3], [5, 6], [6, 12], [2, 4], [7, 8], [20, 21]]

// Sort the intervals
intervals.sort({$0[1] < $1[1]})
println("Sorted intervals \(intervals)")

// Loop and just add the non overlapping intervals
var nonOverlappingIntervals: [[Int]] = []
var finish = intervals[0][1]
intervals.removeAtIndex(0)
for interval in intervals {
    if finish < interval[0] {
        finish = interval[1]
        nonOverlappingIntervals.append(interval)
    }
}

println("Non-overlapping intervals \(nonOverlappingIntervals)")