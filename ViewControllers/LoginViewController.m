//
//  LoginViewController.m
//  Fastgram
//
//  Created by zurken on 7/6/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UITextField *usernameField;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)tappedSignUp:(id)sender {
    if ([self.emailField.text isEqual:@""]) {
        [self showAccountWarning:@"Email Required" withMessage:@"In order to create an account you must provide an email address."];
    }
    else if ([self.usernameField.text isEqual:@""]) {
        [self showAccountWarning:@"Username Required" withMessage:@"In order to create an account you must provide a username."];
    }
    else if ([self.passwordField.text isEqual:@""]) {
        [self showAccountWarning:@"Password Required" withMessage:@"In order to create an account you must provide a password."];
    }
    else {
        [self registerUser];
    }
}

- (IBAction)tappedLogin:(id)sender {
    if ([self.usernameField.text isEqual:@""]) {
        [self showAccountWarning:@"Username Required" withMessage:@"In order to login you must provide a username."];
    }
    else if ([self.passwordField.text isEqual:@""]) {
        [self showAccountWarning:@"Password Required" withMessage:@"In order to login you must provide a password."];
    }
    else {
        [self loginUser];
    }
}

-(void)showAccountWarning:(NSString *)title  withMessage:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:(UIAlertControllerStyleAlert)];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {}];
    [alert addAction:okAction];

    [self presentViewController:alert animated:YES completion:^{}];
}

- (void)registerUser {
    PFUser *newUser = [PFUser user];
    
    newUser.email = self.emailField.text;
    newUser.username = self.usernameField.text;
    newUser.password = self.passwordField.text;
    
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);
            
            if (error.code == 203) {
                [self showAccountWarning:@"Account Error" withMessage:@"Account already exists for this email address."];
            }
            else if (error.code == 202) { // account already exists
                [self showAccountWarning:@"Account Error" withMessage:@"Account already exists for this username."];
            }
        }
        else {
            [self performSegueWithIdentifier:@"LoginSegue" sender:nil];
        }
    }];
}

- (void)loginUser {
    NSString *username = self.usernameField.text;
    NSString *password = self.passwordField.text;
    
    [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser * user, NSError *  error) {
        if (error != nil) {
            NSLog(@"User log in failed: %@", error.localizedDescription);
            
            if (error.code == 101) {// incorrect username/password
                [self showAccountWarning:@"Invalid Login" withMessage:@"Username and password combination is invalid."];
            }
        }
        else {
            [self performSegueWithIdentifier:@"LoginSegue" sender:nil];
        }
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
