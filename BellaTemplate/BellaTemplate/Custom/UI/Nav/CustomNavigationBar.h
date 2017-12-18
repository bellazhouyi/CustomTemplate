//
//  CustomNavigationBar.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^NavigationBarClickBlock)();

/**
 默认的自定义NavigationBar
 */
@interface CustomNavigationBar : UIView

@property (weak, nonatomic) IBOutlet UIView *leftView;
@property (weak, nonatomic) IBOutlet UIView *centerView;
@property (weak, nonatomic) IBOutlet UIView *rightView;

@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton *centerBtn;

@property (weak, nonatomic) IBOutlet UIButton *rightBtn;

@property (nonatomic, copy) NavigationBarClickBlock leftBtnClickHandler;
@property (nonatomic, copy) NavigationBarClickBlock rightBtnClickHandler;

@end
