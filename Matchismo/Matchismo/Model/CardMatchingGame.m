//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Patrick Quirk on 1/21/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray* cards;
@end

@implementation CardMatchingGame

-(NSMutableArray*)cards
{
    if (!_cards)
        _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(instancetype)initWithCardCount:(NSUInteger)count usingDesk:(Deck *)deck
{
    self = [super init];
    
    if (self)
    {
        for (int i = 0; i < count; i++) {
            Card* card = [deck getRandomCard];
            if (card)
                [self.cards addObject:card];
            else{
                self = nil;
                break;
            }
        }
    }
    
    return self;
}

-(Card*)cardAtIndex:(NSUInteger)index
{
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

-(void)chooseCardAtIndex:(NSUInteger)index
{
    Card* card = [self cardAtIndex:index];
    if (card)
    {
        
    }
}

@end
