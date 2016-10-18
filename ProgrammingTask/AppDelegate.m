//
//  AppDelegate.m
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import "AppDelegate.h"
#import "ProgrammingTask-Swift.h"
#import "LoginViewController.h"

@interface AppDelegate ()
{
    RemoteServer *_server;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _server = [RemoteServer new];
    LoginViewController *rootVC = (LoginViewController *)self.window.rootViewController;
    rootVC.server = _server;//pass API object to avoid shared instances and network issues.
    return YES;
}
@end
