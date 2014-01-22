//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Patrick Quirk on 1/21/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

-(instancetype)initWithCardCount:(NSUInteger)count
                       usingDesk:(Deck*)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;

-(Card*)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly) NSInteger score;

@end
