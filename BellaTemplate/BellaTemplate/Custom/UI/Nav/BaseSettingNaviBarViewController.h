//
//  BaseSettingNaviBarViewController.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 对自定义navigationBar的基本设置类
 */
@interface BaseSettingNaviBarViewController : UIViewController

@property (nonatomic, copy) NSString *centerBtnTitle;

@property (nonatomic, assign) BOOL leftButtonHidden;
@property (nonatomic, assign) BOOL rightButtonHidden;

@property (nonatomic, strong) UIColor *navigationBgColor;

@property (readonly, nonatomic, strong) UIButton *leftButton;
@property (readonly, nonatomic, strong) UIButton *rightButton;
@property (readonly, nonatomic, strong) UIButton *centerButton;


- (void)replaceDefaultNavBar:(UIView *)nav;
- (void)defaultLeftBtnClick;
- (void)defaultRightBtnClick;

@end
