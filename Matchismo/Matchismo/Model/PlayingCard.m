//
//  PlayingCard.m
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (NSString*)contents
{
    NSArray* rankStrings = [PlayingCard validRanks];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
        _suit = suit;
}

- (NSString*)suit
{
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank])
        _rank = rank;
}

+(NSArray*)validSuits
{
    return @[@"♣︎",@"♠︎",@"♥︎",@"♦︎"];
}

+(NSArray*)validRanks
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger)maxRank
{
    return [[PlayingCard validRanks] count] - 1;
}

@end
