//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Jaume, Louis (NA) on 09/11/2022.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange - test set-up
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act - perform the action we want to test
        let sortedArray = sorting.bubbleSort(unsortedArray)
        //assert - check the action behaved as we expected
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testInsertionSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange - test set-up
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act - perform the action we want to test
        let sortedArray = sorting.insertionSort(unsortedArray)
        //assert - check the action behaved as we expected
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testMergeSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange - test set-up
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act - perform the action we want to test
        let sortedArray = sorting.mergeSort(unsortedArray)
        //assert - check the action behaved as we expected
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testLinearSearchWithArrayOfIntegersReturnsTrue() {
        //arrange - test set-up
        let array = [3, 1, 10, 15, 4]
        let searchTerm = 10
        let expected = true
        let sorting = Sorting()
        //act - perform the action we want to test
        let foundTerm = sorting.linearSearch(searchTerm, array)
        //assert - check the action behaved as we expected
        XCTAssertEqual(foundTerm, expected)
    }
    
    func testBinarySearchWithSortedArrayOfIntegersReturnsTrue() {
        //arrange - test set-up
        let array = [1, 3, 4, 10, 15]
        let searchTerm = 10
        let expected = true
        let sorting = Sorting()
        //act - perform the action we want to test
        let foundTerm = sorting.binarySearch(searchTerm, array)
        //assert - check the action behaved as we expected
        XCTAssertEqual(foundTerm, expected)
    }
}
