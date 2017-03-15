//
//  StateController.h
//  StatesCollectionView_ObjC
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
@class State;
@class StateHelper; 

@interface StateController : NSObject

@property(nonatomic, strong)NSArray *states; 

+ (StateController *)shared;

- (NSArray *)addStates;



@end
