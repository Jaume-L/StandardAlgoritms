//
//  Sorting.swift
//  StandardAlgoritms
//
//  Created by Jaume, Louis (NA) on 09/11/2022.
//

import Foundation

class Sorting {
    func bubbleSort(_ data: [Int]) -> [Int] {
        var array = data
        var swapped = true
        
        while swapped {
            
            for i in 0..<array.count - 1 {
                
                if array[i] > array[i + 1] {
                    let temp = array[i + 1]
                    array[i + 1] = array[i]
                    array[i] = temp
                    swapped = true
                    
                }
            }
        }
        return array
    }
    
    func insertionSort(_ data: [Int]) -> [Int] {
        var array = data
        for i in 1..<data.count {
            let temp = array[i]
            var j = i - 1
            
            while j >= 0 && array[j] > temp {
                array[j + 1] = array[j]
                j = j - 1
                
            }
            array[j + 1] = temp
            
        }
        return array
    }
}
