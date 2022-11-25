//
//  Searching.swift
//  StandardAlgoritms
//
//  Created by Jaume, Louis (NA) on 25/11/2022.
//

import Foundation

class Searching {
    func linearSearch(_ searchTerm: Int, _ data: [Int]) -> Bool {
        for item in data {
        
            if item == searchTerm {
                    return true
            }
        }
        return false
    }
    
    func binarySearch(_ searchTerm: Int, _ data: [Int]) -> Bool {
        var array = data
        var isFound = false
        var searching = true
      
        while searching {
            let midpoint = array.count / 2

            if array.count == 1 && searchTerm != array[0] {
                isFound = false
                searching = false

            } else if array[midpoint] > searchTerm {
                array = Array(array[0..<midpoint])
          
            } else if array[midpoint] < searchTerm {
                array = Array(array[midpoint..<array.count])
          
            } else {
                isFound = true
                searching = false
          
            }
        }
        return isFound
    }
}
