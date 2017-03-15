//
//  StateController.m
//  StatesCollectionView_ObjC
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

#import "StateController.h"
#import "StateHelper.h"
#import "State.h"

@implementation StateController

+ (StateController *)shared {
    static StateController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [StateController new];
    });
    return shared;
}

-(instancetype)init
{
    self = [super init];
    if (self) {
        _states = [self addStates];
    }
    return self;
}

-(NSArray *)addStates
{
    NSMutableArray *newStates = [[NSMutableArray alloc] init];
    
    // create an instance
    StateHelper *stateHelper = [[StateHelper alloc] init];
    
    for (NSString *fullStateName in [stateHelper fullNames]) {
        NSInteger index = [[stateHelper fullNames] indexOfObject:fullStateName];
        // Get the abbreviation
        NSString *abbreviation = [stateHelper abbreviations][index];
        // Initialize a new state
        State *state = [[State alloc]initWithName:fullStateName abbreviation:abbreviation];
        // Append the state to the newStates array
        [newStates addObject:state];
    }
    return newStates;
}



@end
