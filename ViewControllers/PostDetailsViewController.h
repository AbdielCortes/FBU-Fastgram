//
//  PostDetailsViewController.h
//  Fastgram
//
//  Created by zurken on 7/9/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostDetailsViewController : UIViewController

@property (strong, nonatomic) Post *post;

@end

NS_ASSUME_NONNULL_END
