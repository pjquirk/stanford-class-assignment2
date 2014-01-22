//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Patrick Quirk on 1/11/14.
//  Copyright (c) 2014 Patrick Quirk. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()
@property (strong,nonatomic) Deck* deck;
@property (strong,nonatomic) CardMatchingGame* game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@end

@implementation CardGameViewController

- (Deck*)deck
{
    if (!_deck)
        _deck = [self createDeck];
    return _deck;
}

-(CardMatchingGame*)game
{
    if (!_game)
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    return _game;
}

-(Deck*)createDeck
{
    return [[PlayingCardDeck alloc] init];
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
