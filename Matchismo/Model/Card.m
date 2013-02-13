//
//  Card.m
//  Matchismo
//
//  Created by Andrew Stinnett on 1/31/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards;{
    int score = 0;
    
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
}

//- (NSString *)description
//{
//    return [NSString stringWithFormat:@"\ncontents: @ \nfaceup: @\nunplayable:             "  contents, faceup, unlayable
//            ];
//}

@end
