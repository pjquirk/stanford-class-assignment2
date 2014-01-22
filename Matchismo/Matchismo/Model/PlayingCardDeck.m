//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        for (NSString* suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard* card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                NSLog(@"Created card with rank=%lu and suit=%@, contents=%@", (unsigned long)rank, suit, card.contents);
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
