//
//  SearchingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Jaume, Louis (NA) on 25/11/2022.
//

import XCTest

class SearchingTest: XCTestCase {
    func testLinearSearchWithArrayOfIntegersReturnsTrue() {
        //arrange - test set-up
        let array = [3, 1, 10, 15, 4]
        let firstSearchTerm = 10
        let secondSearchTerm = 11
        let firstExpected = true
        let secondExpected = false
        let searching = Searching()
        //act - perform the actions we want to test
        let firstFoundTerm = searching.linearSearch(firstSearchTerm, array)
        let secondFoundTerm = searching.linearSearch(secondSearchTerm, array)
        //assert - check the actions behaved as we expected
        XCTAssertEqual(firstFoundTerm, firstExpected)
        XCTAssertEqual(secondFoundTerm, secondExpected)
    }
    
    func testBinarySearchWithSortedArrayOfIntegersReturnsTrue() {
        //arrange - test set-up
        let array = [1, 3, 4, 10, 15]
        let firstSearchTerm = 10
        let secondSearchTerm = 11
        let firstExpected = true
        let secondExpected = false
        let searching = Searching()
        //act - perform the actions we want to test
        let firstFoundTerm = searching.binarySearch(firstSearchTerm, array)
        let secondFoundTerm = searching.binarySearch(secondSearchTerm, array)
        //assert - check the actions behaved as we expected
        XCTAssertEqual(firstFoundTerm, firstExpected)
        XCTAssertEqual(secondFoundTerm, secondExpected)
    }
}
