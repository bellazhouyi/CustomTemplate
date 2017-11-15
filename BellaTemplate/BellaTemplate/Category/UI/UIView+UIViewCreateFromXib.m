//
//  UIView+UIViewCreateFromXib.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/15.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "UIView+UIViewCreateFromXib.h"

@implementation UIView (UIViewCreateFromXib)

+ (instancetype)createViewFromXib {
    NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil];
    NSAssert(nibs && nibs.count != 0, @"获取nib失败!");
    return nibs[0];
}

@end
