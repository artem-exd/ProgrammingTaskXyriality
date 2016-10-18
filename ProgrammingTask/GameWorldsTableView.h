//
//  GameWorldsTableView.h
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgrammingTask-Swift.h"

@interface GameWorldsTableView : UITableView
- (void)showGameWorldsData:(NSArray<GemeWorldModel *> *)gameWorlds;
@end
