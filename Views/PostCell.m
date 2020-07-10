//
//  PostCell.m
//  Fastgram
//
//  Created by zurken on 7/7/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import "PostCell.h"
#import "NSDate+DateTools.h"
#import <UIKit/UIKit.h>

@implementation PostCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setPost:(Post *)post {
    _post = post;
    
    self.username.text = post.author.username;
    self.caption.text = post.caption;
    
    self.timeSinceCreation.text = post.createdAt.timeAgoSinceNow;
    
    self.image.file = post[@"image"];
    [self.image loadInBackground];
}

@end
