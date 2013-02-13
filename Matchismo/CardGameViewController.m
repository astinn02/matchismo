//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Andrew Stinnett on 1/31/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
//@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation CardGameViewController

@synthesize cardButtons = _cardButtons;

- (CardMatchingGame *)game{
    if (!_game){
        _game  = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                   usingDeck:[[PlayingCardDeck alloc] init]];
    }
    return _game;
}

- (void)setCardButtons:(NSArray *)cardButtons{
    _cardButtons = cardButtons;
    [self updateUI];
}

- (void)updateUI{
    //one job: take the state of the model and make the UI reflect that state
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = [self.game cardAtIndex:[self.cardButtons indexOfObject:cardButton]];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
        [cardButton setTitle:card.contents forState:UIControlStateSelected|UIControlStateDisabled];
        cardButton.selected = card.isFaceUp;
        //NSLog(@"card is faceUp? %c", card.isFaceUp);
        cardButton.enabled = !card.isUnplayable;
        cardButton.alpha = (card.isUnplayable ? 0.2 : 1.0);
        
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d",self.game.score];
}

-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    //NSLog(@"flipCount is: %d", flipCount);
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
}

- (IBAction)flipCard:(UIButton *)sender {
    
    [self.game flipCardAtIndex:[self.cardButtons indexOfObject:sender]];
    self.flipCount++;
    [self updateUI];
    
}

@end
