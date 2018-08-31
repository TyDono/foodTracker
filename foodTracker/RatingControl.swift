//
//  RatingControl.swift
//  foodTracker
//
//  Created by Tyler Donohue on 8/30/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    

    //MARK: Initialization
    
   override init(frame: CGRect) {
    super.init(frame: frame)
    setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed :D Bob Ross will now claim your soul!")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        for _ in 0..<5 {
        
        // Create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Setup the button action
        button.addTarget(self, action:
    #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button)
        }
        
    }

}
