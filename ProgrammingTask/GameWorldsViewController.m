//
//  GameWorldsViewController.m
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import "GameWorldsViewController.h"
#import "GameWorldsTableView.h"

@interface GameWorldsViewController ()
@property(nonatomic, weak) IBOutlet GameWorldsTableView *tableView;
@end

@implementation GameWorldsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView showGameWorldsData:_gameWorlds];
}

@end
