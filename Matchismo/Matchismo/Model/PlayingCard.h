//
//  PlayingCard.h
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic) NSUInteger rank;
@property (nonatomic,strong) NSString *suit;

+(NSArray*)validSuits;
+(NSUInteger)maxRank;

@end
