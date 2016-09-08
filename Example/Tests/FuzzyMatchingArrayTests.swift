/*
 Copyright 2016 Sean O'Shea
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

import XCTest

class FuzzyMatchingArrayTests: XCTestCase {

  func testMatchingStringsInArraysWithoutOptions() {
//    let first = ["one", "two", "three"]
    var second = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
//    let third = ["one"]
    
    var numbers = [0, 1, 3, 2]
    numbers.sortInPlace({ (one, two) -> Bool in
      return one < two
    })
    
//    first.sortByFuzzyMatchPattern("on")
    second.sortByFuzzyMatchPattern("on")
//    third.sortByFuzzyMatchPattern("on")
    
//    XCTAssert(first[0] == "one")
//    XCTAssert(first[1] == "two")
//    XCTAssert(first.count == 3)
    
    XCTAssert(second[0] == "one")
    XCTAssert(second[1] == "two")
    XCTAssert(second[2] == "four")
    XCTAssert(second[3] == "seven")
    XCTAssert(second[4] == "nine")
    XCTAssert(second[5] == "ten")
    XCTAssert(second.count == 10)
    
//    XCTAssert(third[0] == "one")
//    XCTAssert(third.count == 1)
  }
  
//  func testMatchingStringsInArraysWithOptions() {
//    var first = ["one", "two", "three"]
//    var second = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
//    var third = ["one", "two", "three"]
//    
//    first.sortByFuzzyMatchPattern("on", loc: 0, distance: 1000.0)
//    second.sortByFuzzyMatchPattern("on", loc: 10, distance: 1.0)
//    third.sortByFuzzyMatchPattern("on")
//    
//    XCTAssert(first[0] == "one")
//    XCTAssert(first[1] == "two")
//    
//    XCTAssert(second[0] == "two")
//    XCTAssert(second[1] == "seven")
//    XCTAssert(second[2] == "ten")
//    XCTAssert(second[3] == "one")
//    XCTAssert(second[4] == "three")
//    XCTAssert(second[5] == "four")
//    XCTAssert(second[6] == "five")
//    XCTAssert(second[7] == "six")
//    XCTAssert(second[8] == "eight")
//    XCTAssert(second[9] == "nine")
//    
//    XCTAssert(third == first)
//  }
}
