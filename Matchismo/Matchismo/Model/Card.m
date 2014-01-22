//
//  Card.m
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray*)otherCards
{
    int score = 0;
    
    for (Card* card in otherCards) {
        if ([card.contents isEqualToString:self.contents])
            score = 1;
    }
    
    return score;
}

@end
