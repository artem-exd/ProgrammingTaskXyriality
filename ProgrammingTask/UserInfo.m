//
//  UserInfo.m
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import "UserInfo.h"
#import <UIKit/UIKit.h>

@interface UserInfo()

@end

@implementation UserInfo

+ (NSString *)deviceType {
    NSString *model = [[UIDevice currentDevice] model];
    NSString *sysName = [[UIDevice currentDevice] systemName];
    NSString *sysVer = [[UIDevice currentDevice] systemVersion];
    return [NSString stringWithFormat:@"%@ - %@ %@", model, sysName, sysVer];
}

+ (NSString *)deviceID {
    return [[UIDevice currentDevice] identifierForVendor].UUIDString;
}

@end
