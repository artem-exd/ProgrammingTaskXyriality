//
//  UILoginStackView.m
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import "UILoginStackView.h"
@interface UILoginStackView() <UITextFieldDelegate>
@end

@implementation UILoginStackView

- (void)awakeFromNib {
    [super awakeFromNib];
    self.emailField.layer.cornerRadius = 3;
    self.passwordField.layer.cornerRadius = 3;
    self.loginButton.layer.cornerRadius = 3;
    
    self.emailField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"email"
                                                                            attributes:@{NSForegroundColorAttributeName: [UIColor grayColor]}];
    
    UIColor *borderColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.5];
    self.emailField.layer.borderWidth = 1;
    self.passwordField.layer.borderWidth = 1;
    self.loginButton.layer.borderWidth = 1;
    self.emailField.layer.borderColor = borderColor.CGColor;
    self.passwordField.layer.borderColor = borderColor.CGColor;
    self.loginButton.layer.borderColor = borderColor.CGColor;
    
    self.emailField.delegate = self;
    self.passwordField.delegate = self;
    
    self.loginButton.alpha = 0.4;
    self.loginButton.enabled = false;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if ([self isValidTextFields]) {
        self.loginButton.alpha = 1;
        self.loginButton.enabled = true;
    }
    return true;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([self isValidTextFields]) {
        self.loginButton.alpha = 1;
        self.loginButton.enabled = true;
    } else {
        self.loginButton.alpha = 0.4;
        self.loginButton.enabled = false;
    }
}

- (BOOL)isValidTextFields { //if contains email character @ and password field not empty
    return [self.emailField.text containsString:@"@"] && ![self.passwordField.text isEqualToString:@""];
}

@end
