//
//  Card.h
//  Matchismo
//
//  Created by Andrew Stinnett on 1/31/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;

@property (nonatomic,getter=isFaceUp) BOOL faceUp;

@property (nonatomic,getter=isUnplayable) BOOL unPlayable;

-(int)match:(NSArray *)otherCards;

@end
