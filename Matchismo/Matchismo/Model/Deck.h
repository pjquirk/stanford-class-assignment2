//
//  Deck.h
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card*)card;
- (void)addCard:(Card*)card atTop:(BOOL)atTop;

- (Card*)getRandomCard;

@end
