//
//  UserInfo.h
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import <Foundation/Foundation.h>

//helper class to collect user data.
@interface UserInfo : NSObject
+ (NSString *)deviceType;
+ (NSString *)deviceID;
@end
