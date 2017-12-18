//
//  BaseSettingNaviBarViewController.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "BaseSettingNaviBarViewController.h"
#import "UIView+UIViewCreateFromXib.h"
#import "CustomNavigationBar.h"

@interface BaseSettingNaviBarViewController ()

@property (nonatomic, strong) CustomNavigationBar *customNavigationBar;

@end

@implementation BaseSettingNaviBarViewController

+ (void)load {
    NSLog(@"BaseSettingNaviBarViewController load");
}
+ (void)initialize {
    [super initialize];
    
    NSLog(@"BaseSettingNaviBarViewController initilize");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initNavigationBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private
- (void)initNavigationBar {
    if (!_customNavigationBar) {
        _customNavigationBar = [CustomNavigationBar createViewFromXib];
        
        _customNavigationBar.translatesAutoresizingMaskIntoConstraints = NO;
    }
    [self.view addSubview:_customNavigationBar];
    [self addConstraintsWithView:_customNavigationBar];
    
    if (self.navigationController) {
        if (self.navigationController.viewControllers[0] == self) {
            self.leftButton.hidden = YES;
        }else {
            self.leftButton.hidden = NO;
        }
    }
    
    [self.leftButton setImage:[UIImage imageNamed:@"returnImage"] forState:UIControlStateNormal];
    [self.leftButton setTitle:@"返回" forState:UIControlStateNormal];
    __weak typeof(self) ws = self;
    _customNavigationBar.leftBtnClickHandler = ^{
        __strong typeof(self) strongSelf = ws;
        [strongSelf defaultLeftBtnClick];
    };
    
    _customNavigationBar.rightBtnClickHandler = ^{
        __strong typeof(self) strongSelf = ws;
        [strongSelf defaultRightBtnClick];
    };
}

- (void)addConstraintsWithView:(UIView *)view {
    NSLayoutConstraint *topConstrait = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    
    NSLayoutConstraint *leftConstrait = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    
    NSLayoutConstraint *rightConstrait = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    [self.view addConstraints:@[topConstrait, leftConstrait, rightConstrait]];
    
    NSLayoutConstraint *heightConstrait = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:view.bounds.size.height];
    [view addConstraint:heightConstrait];
}

#pragma mark - public
- (void)defaultLeftBtnClick {
    NSAssert(self.navigationController, @"self.navigationController == nil");
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (void)defaultRightBtnClick {
    
}

- (void)replaceDefaultNavBar:(UIView *)nav {
    NSAssert(nav, @"nav == nil");
    if (nav) {
        [_customNavigationBar removeFromSuperview];
        _customNavigationBar = nil;
        [self.view addSubview:nav];
        [self addConstraintsWithView:nav];
    }
}
#pragma mark - getter

- (UIButton *)leftButton {
    return _customNavigationBar?_customNavigationBar.leftBtn:nil;
}
- (UIButton *)centerButton {
    return _customNavigationBar?_customNavigationBar.centerBtn:nil;
}
- (UIButton *)rightButton {
    return _customNavigationBar?_customNavigationBar.rightBtn:nil;
}

#pragma mark - setter
- (void)setLeftButtonHidden:(BOOL)leftButtonHidden {
    _leftButtonHidden = leftButtonHidden;
    self.leftButton.hidden = leftButtonHidden;
}
- (void)setRightButtonHidden:(BOOL)rightButtonHidden {
    _rightButtonHidden = rightButtonHidden;
    self.rightButton.hidden = rightButtonHidden;
}
- (void)setCenterBtnTitle:(NSString *)centerBtnTitle {
    _centerBtnTitle = centerBtnTitle;
    [self.centerButton setTitle:centerBtnTitle forState:UIControlStateNormal];
}
- (void)setNavigationBgColor:(UIColor *)navigationBgColor {
    _navigationBgColor = navigationBgColor;
    _customNavigationBar.backgroundColor = navigationBgColor;
}
@end
