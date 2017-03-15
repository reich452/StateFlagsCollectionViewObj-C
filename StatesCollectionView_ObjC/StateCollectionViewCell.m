//
//  StateCollectionViewCell.m
//  StatesCollectionView_ObjC
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

#import "StateCollectionViewCell.h"
#import <UIKit/UIKit.h>
#import "StateHelper.h"
#import "State.h"
#import "StateController.h"

@interface StateCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;

@end

@implementation StateCollectionViewCell

- (void) updateWithStates:(State *)states {
    if (states) {
        self.flagImageView.image = [UIImage imageNamed:states.abbreviation];
        self.stateLabel.text = states.name; 
    }
}

- (void)setStates:(State *)state
{
    // WillSet
    _states = state; // The setting of the property itself
    // DidSet
    [self updateWithStates:state];
}

@end
