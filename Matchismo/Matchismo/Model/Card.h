//
//  Card.h
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString* contents;

@property (nonatomic, getter = isMatched) BOOL matched;
@property (nonatomic, getter = isChosen) BOOL chosen;

- (NSInteger)match:(NSArray*)otherCards;

@end
