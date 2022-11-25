//
//  Unknown.swift
//  StandardAlgoritms
//
//  Created by Jaume, Louis (NA) on 25/11/2022.
//

import Foundation

class Unknown {
    func firstAndLastItemSum(_ data: [Int]) -> Int {
        var sum = 0
        
        if data.count > 0 {
            sum = data[0] + data[data.count - 1]
        }
        return sum
    }
    
    func modeOfSortedArray(_ data: [Int]) -> Int {
        var highest = (currentMode: 0, occurences: 0)
        var count = 0
        
        for i in 1..<data.count {
            
            if data[i] == data[i - 1] {
                count += 1
                
            } else {
                if count > highest.occurences {
                    highest = (data[i - 1], count)
                }
                count = 0
            }
        }
        return highest.currentMode
    }
}
