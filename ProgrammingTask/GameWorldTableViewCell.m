//
//  GameWorldTableViewCell.m
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import "GameWorldTableViewCell.h"

@implementation GameWorldTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tableViewBg"]];
}

- (void)setColorForIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 2) {
        self.backgroundColor = [UIColor whiteColor];
    } else {
        self.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.2];
    }
}
@end
