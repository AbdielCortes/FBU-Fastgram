//
//  UserProfileViewController.m
//  Fastgram
//
//  Created by zurken on 7/10/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import "UserProfileViewController.h"
#import <Parse/Parse.h>

@interface UserProfileViewController ()

@property (weak, nonatomic) IBOutlet UILabel *username;

@property (weak, nonatomic) IBOutlet UIImageView *profileImage;

@end

@implementation UserProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.username.text = [PFUser currentUser].username;
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
