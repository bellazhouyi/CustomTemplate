//
//  UIView+UIViewCreateFromXib.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/15.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIViewCreateFromXib)

/**
 获取xib创建的视图

 @return 视图
 */
+ (instancetype)createViewFromXib;

@end
