//
//  CardModel.swift
//  MatchApp
//
//  Created by gusgita on 05/07/20.
//  Copyright © 2020 gusgita. All rights reserved.
//

import Foundation

class CardModel {
    func getCards() -> [Card] {
        // Declare an empty array to store numbers that we've generated
        var generatedNumbers = [Int]()
        
        // Declare an empty array
        var generatedCards = [Card]()
        
        // Randomly generate 8 pairs of cards
        repeat {
            // Generate random card number
            let randomNumber = Int.random(in: 1...13)
            
            if (!generatedNumbers.contains(randomNumber)) {
                // Create two new card objects
                let cardOne = Card()
                let cardTwo = Card()
                
                // Set their image names
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                
                // Add them to the array
                generatedCards += [cardOne, cardTwo]
                
                // Add this number to the list of generated numbers
                generatedNumbers.append(randomNumber)
                print(randomNumber)
            }
        } while generatedNumbers.count < 8
        
        // Randomize the cards within the array
        generatedCards.shuffle()
        
        // Return the array
        return generatedCards
    }
}
