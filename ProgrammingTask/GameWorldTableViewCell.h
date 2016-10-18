//
//  GameWorldTableViewCell.h
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameWorldTableViewCell : UITableViewCell
@property(nonatomic, weak) IBOutlet UILabel *gameNameLabel;
- (void)setColorForIndexPath:(NSIndexPath *)indexPath;
@end
