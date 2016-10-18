//
//  GameWorldsTableView.m
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import "GameWorldsTableView.h"
#import "GameWorldTableViewCell.h"

@interface GameWorldsTableView() <UITableViewDelegate, UITableViewDataSource>
{
    NSArray<GemeWorldModel *> *_gameWorlds;
}
@end

@implementation GameWorldsTableView

- (void)awakeFromNib {
    [super awakeFromNib];
    self.dataSource = self;
    self.delegate = self;
}

- (void)showGameWorldsData:(NSArray<GemeWorldModel *> *)gameWorlds {
    _gameWorlds = gameWorlds;
    [self reloadData];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _gameWorlds.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GameWorldTableViewCell *cell = [self dequeueReusableCellWithIdentifier:@"GameWorldCell" forIndexPath:indexPath];
    cell.gameNameLabel.text = _gameWorlds[indexPath.row].name;
    [cell setColorForIndexPath:indexPath];
    return cell;
}

@end
