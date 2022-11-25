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
            swapped = false
            
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
    
    func merge(_ firstArray: [Int], _ secondArray: [Int]) -> [Int] {
        var firstIndex = 0
        var secondIndex = 0

        var sortedArray = [Int]()

        while firstIndex < firstArray.count && secondIndex < secondArray.count {
          
            if firstArray[firstIndex] < secondArray[secondIndex] {
                sortedArray.append(firstArray[firstIndex])
                firstIndex += 1
            
            } else if firstArray[firstIndex] > secondArray[secondIndex] {
                sortedArray.append(secondArray[secondIndex])
                secondIndex += 1
            
            } else {
                sortedArray.append(firstArray[firstIndex])
                firstIndex += 1
                sortedArray.append(secondArray[secondIndex])
                secondIndex += 1
            }
        }

        while firstIndex < firstArray.count {
            sortedArray.append(firstArray[firstIndex])
            firstIndex += 1
        }
        while secondIndex < secondArray.count {
            sortedArray.append(secondArray[secondIndex])
            secondIndex += 1
        }

        return sortedArray
      
    }

    func mergeSort(_ data: [Int]) -> [Int] {
        guard data.count > 1 else { return data }

        let midpoint = data.count / 2

        let firstArray = mergeSort(Array(data[0..<midpoint]))
        let secondArray = mergeSort(Array(data[midpoint..<data.count]))

        return merge(firstArray, secondArray)
    }
    
    func quickSort(_ data: [Int]) -> [Int] {
        guard data.count > 1 else { return data }
        
        let pivot = data[data.count / 2]
        let lowerItems = data.filter { $0 < pivot }
        let equalItems = data.filter { $0 == pivot }
        let higherItems = data.filter { $0 > pivot }
        
        return quickSort(lowerItems) + equalItems + quickSort(higherItems)
    }
}
