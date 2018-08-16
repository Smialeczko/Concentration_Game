//
//  Card.swift
//  StanfordCourseApp
//
//  Created by Monika Śmiałko on 10/08/2018.
//  Copyright © 2018 Monika Śmiałko. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
        
        //można też to napisać z card.
        // Card.identifierFactory += 1
       // return Card.identifierFactory
    }
    
    init() {
    self.identifier = Card.getUniqueIdentifier()
    }
}
