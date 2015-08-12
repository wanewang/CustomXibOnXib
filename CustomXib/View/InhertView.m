//
//  InhertView.m
//  CustomXib
//
//  Created by Wane Wang on 2015/8/12.
//  Copyright (c) 2015年 Wane Wang. All rights reserved.
//

#import "InhertView.h"

@interface InhertView ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

@end

@implementation InhertView

- (void)setIconImage:(UIImage *)iconImage {
    self.iconImageView.image = iconImage;
}

- (void)setTitleText:(NSString *)titleText {
    self.titleLabel.text = titleText;
}

- (void)setDescText:(NSString *)descText {
    self.descLabel.text = descText;
}

@end
