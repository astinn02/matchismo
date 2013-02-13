//
//  PlayingCard.h
//  Matchismo
//
//  Created by Andrew Stinnett on 1/31/13.
//  Copyright (c) 2013 Andrew Stinnett.
//  All rights reserved.
//
#import "Card.h"
#import <Foundation/Foundation.h>

@interface PlayingCard : Card

@property (strong,nonatomic) NSString * suit;

@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;


@end
