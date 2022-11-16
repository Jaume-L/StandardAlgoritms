//
//  Sorting.swift
//  StandardAlgoritms
//
//  Created by Jaume, Louis (NA) on 09/11/2022.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
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
}
