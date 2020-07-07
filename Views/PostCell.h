//
//  PostCell.h
//  Fastgram
//
//  Created by zurken on 7/7/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profileImage;

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UILabel *username;

@property (weak, nonatomic) IBOutlet UILabel *caption;

@end

NS_ASSUME_NONNULL_END
