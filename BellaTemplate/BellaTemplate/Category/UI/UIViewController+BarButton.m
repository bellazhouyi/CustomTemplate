//
//  UIViewController+BarButton.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/12/15.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "UIViewController+BarButton.h"

@implementation UIViewController (BarButton)

- (void)addLeftBarButtonWithImage:(UIImage *)image action:(SEL)action

{
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0,0,44,44)];
    
    view.backgroundColor = [UIColor clearColor];
    
    
    
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    firstButton.frame = CGRectMake(0, 0, 44, 44);
    
    [firstButton setImage:image forState:UIControlStateNormal];
    
    [firstButton addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    BOOL SYSTEM_VERSION_LESS_THAN = [[[UIDevice currentDevice] systemVersion] containsString:@"11"]; //SYSTEM_VERSION_LESS_THAN(@"11")
    float kScreenWidth = [UIScreen mainScreen].bounds.size.width;
    if (!SYSTEM_VERSION_LESS_THAN) {
        
        firstButton.contentHorizontalAlignment =UIControlContentHorizontalAlignmentLeft;
        
        [firstButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5 *kScreenWidth /375.0,0,0)];
    }
    
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:firstButton];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
}

@end
