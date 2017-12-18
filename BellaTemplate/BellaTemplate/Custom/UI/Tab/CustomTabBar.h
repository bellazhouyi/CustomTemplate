//
//  CustomTabBar.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/13.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomTabBar;

@protocol CustomTabBarDelegate<NSObject>

- (void)addButtonClick:(CustomTabBar *)tabBar;

@end

/**
 自定义tabBar
 */
@interface CustomTabBar : UITabBar

@property (nonatomic, weak) id<CustomTabBarDelegate> customTabBarDelegate;

@end
