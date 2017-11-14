//
//  CustomNavigationBar.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "CustomNavigationBar.h"

@implementation CustomNavigationBar

+ (instancetype)xibCustomNavigationBar {
    return [[[NSBundle mainBundle] loadNibNamed:@"CustomNavigationBar" owner:nil options:nil] lastObject];
}

@end
