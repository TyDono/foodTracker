//
//  foodTrackerTests.swift
//  foodTrackerTests
//
//  Created by Tyler Donohue on 8/28/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import XCTest
@testable import foodTracker

class foodTrackerTests: XCTestCase {
    
    
    //MARK: Meal CLass Tests
    // Confirm that Meal initializer returns a Meal object when passed valid parameteres.
    func testMealInitializationSucceeds() {
        // Negative Rating
        let zeroRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNotNil(zeroRatingMeal)
        // Empty String
        let positiveRatingMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNotNil(positiveRatingMeal)
        // Confirm that the Meal initializer returns nil when passed a negsative rating or an empty name.
        func testMealInitializationFails() {
            
        }
        
    }
}
