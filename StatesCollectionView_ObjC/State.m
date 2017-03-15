//
//  State.m
//  StatesCollectionView_ObjC
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

#import "State.h"

@implementation State

-(instancetype)initWithName:(NSString *)name abbreviation:(NSString *)abbreviation
{
    self = [super init];
        if (self) {
    _name = [name copy];
    _abbreviation = [abbreviation copy];
    }
    return self;
}


@end
