//
//  Deck.h
//  Matchismo
//
//  Created by Andrew Stinnett on 1/31/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;


@end
