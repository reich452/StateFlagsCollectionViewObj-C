//
//  StatesCollectionViewController.m
//  StatesCollectionView_ObjC
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

#import "StatesCollectionViewController.h"
#import "StateController.h"
#import "StateHelper.h"
#import "StateCollectionViewCell.h"

@interface StatesCollectionViewController ()

@end

@implementation StatesCollectionViewController

static NSString * const reuseIdentifier = @"stateCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.collectionView reloadData];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [StateController shared].states.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    State *state = [StateController shared].states[indexPath.row];
    
    cell.states = state;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>



@end
