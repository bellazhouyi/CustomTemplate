//
//  CustomNavigationBar.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "CustomNavigationBar.h"

@implementation CustomNavigationBar

- (IBAction)leftBtnClickAction:(UIButton *)sender {
    if (_leftBtnClickHandler) {
        _leftBtnClickHandler();
    }
}
- (IBAction)rightBtnClickAction:(UIButton *)sender {
    if (_rightBtnClickHandler) {
        _rightBtnClickHandler();
    }
}

@end
