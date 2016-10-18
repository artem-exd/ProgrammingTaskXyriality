//
//  ViewController.m
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

#import "LoginViewController.h"
#import "UILoginStackView.h"
#import "GameWorldsViewController.h"

@interface LoginViewController ()
@property(nonatomic, weak) IBOutlet UILoginStackView *loginStackView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bgTexture"]];
    self.activityIndicatorView.hidden = true;
}

- (IBAction)loginButtonAction:(UIButton *)sender {
    self.activityIndicatorView.hidden = false;
    [self.activityIndicatorView startAnimating];
    NSString *email = self.loginStackView.emailField.text;
    NSString *password = self.loginStackView.passwordField.text;
    
    __weak LoginViewController *weakSelf = self;
    [_server loginWithEmail:email
                   password:password completion:^(NSArray<GemeWorldModel *> * _Nullable gameWorlds, NSError * _Nullable error) {
                       if (error) {
                           UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Fail" message:error.domain.description preferredStyle:UIAlertControllerStyleAlert];
                           [self presentViewController:alert animated:true completion:nil];
                       } else {
                           [self performSegueWithIdentifier:@"SegueGameWorlds" sender:gameWorlds];
                       }
                       [weakSelf.activityIndicatorView stopAnimating];
    }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"SegueGameWorlds"]) {
        UINavigationController *navVC = segue.destinationViewController;
        GameWorldsViewController *gameWorldsVC = (GameWorldsViewController *)navVC.topViewController;
        gameWorldsVC.gameWorlds = (NSArray<GemeWorldModel *> *)sender;
    }
}

@end
