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
        
        // Zero Rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negsative rating or an empty name.
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // RAting exceeds maximun
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
    
}
