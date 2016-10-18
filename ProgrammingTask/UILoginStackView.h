//
//  UILoginStackView.h
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILoginStackView : UIStackView
@property(nonatomic, weak) IBOutlet  UITextField *emailField;
@property(nonatomic, weak) IBOutlet UITextField *passwordField;
@property(nonatomic, weak) IBOutlet UIButton *loginButton;

@end
