//
//  PostCell.m
//  Fastgram
//
//  Created by zurken on 7/7/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import "PostCell.h"

@implementation PostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setPost:(Post *)post {
    _post = post;
    
    self.username.text = post.userID;
    self.caption.text = post.caption;
    
    //TODO set image
    //self.image.image = post.image;
}

@end
