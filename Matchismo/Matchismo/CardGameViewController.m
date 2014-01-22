//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (strong,nonatomic) Deck* deck;
@end

@implementation CardGameViewController

- (Deck*)deck
{
    if (!_deck)
        _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (IBAction)touchCard:(UIButton *)sender {
    if ([sender.currentTitle length])
    {
        [sender setTitle:@"" forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
    }
    else
    {
        Card* card = [self.deck getRandomCard];
        [sender setTitle:card.contents forState:UIControlStateNormal];
        [self.deck addCard:card];
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
    }
}

@end
