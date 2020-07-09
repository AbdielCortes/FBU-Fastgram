//
//  PostDetailsViewController.m
//  Fastgram
//
//  Created by zurken on 7/9/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import "PostDetailsViewController.h"
#import <Parse/Parse.h>
@import Parse;

@interface PostDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet PFImageView *postImage;

@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *caption;
@property (weak, nonatomic) IBOutlet UILabel *date;

@end

@implementation PostDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       
    self.username.text = self.post.author.username;
    self.caption.text = self.post.caption;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateStyle = NSDateFormatterLongStyle;
    formatter.timeStyle = NSDateFormatterShortStyle;
    self.date.text = [formatter stringFromDate:self.post.createdAt];
   
    self.postImage.file = self.post[@"image"];
   [self.postImage loadInBackground];
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
