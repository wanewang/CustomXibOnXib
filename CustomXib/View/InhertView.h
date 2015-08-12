//
//  InhertView.h
//  CustomXib
//
//  Created by Wane Wang on 2015/8/12.
//  Copyright (c) 2015年 Wane Wang. All rights reserved.
//

#import "BaseView.h"

IB_DESIGNABLE
@interface InhertView : BaseView

@property (nonatomic) IBInspectable UIImage *iconImage;
@property (nonatomic) IBInspectable NSString *titleText;
@property (nonatomic) IBInspectable NSString *descText;

@end
