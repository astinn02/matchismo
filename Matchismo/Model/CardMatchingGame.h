//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Andrew Stinnett on 2/7/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designated initializer
- (id)initWithCardCount:(NSUInteger)count
              usingDeck:(Deck *)deck;

- (void)flipCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;


@property (readonly, nonatomic) int score;



@end





