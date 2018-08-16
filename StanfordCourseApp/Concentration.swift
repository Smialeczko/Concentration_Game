//
//  Concentration.swift
//  StanfordCourseApp
//
//  Created by Monika Śmiałko on 10/08/2018.
//  Copyright © 2018 Monika Śmiałko. All rights reserved.
//

import Foundation
class Concentration
{
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
            }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                //either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                    cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
        }
    }
      //  if cards[index].isFaceUp {
       //         cards[index].isFaceUp = false
       //     } else {
      //          cards[index].isFaceUp = true
       //     }
        
     
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]

            //lub let matchingCard = card
            //cards.append(card)
            //cards.append(matchingCard)
            //lub bez let matchingCard=card, tylko same
            //cards.append(card)
            //cards.append(card)
        }
            }
        //TODO: shuffle the cards, add new game button
    }

