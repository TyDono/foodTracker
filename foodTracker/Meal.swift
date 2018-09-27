//
//  Meal.swift
//  foodTracker
//
//  Created by Tyler Donohue on 9/27/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // The name mus tnot be epmty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be betwen 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialozed stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
