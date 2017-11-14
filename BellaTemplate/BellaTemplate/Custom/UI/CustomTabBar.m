//
//  CustomTabBar.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/13.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "CustomTabBar.h"

static int const ADDBUTTONMARGIN = 15; // addButton 的间隔
static int const ITEMCOUNT = 3; //item 的个数
static NSString * const ADDBUTTONIMAGENAME = @"add";
static NSString * const ADDLABELTEXT = @"ADD";

@interface CustomTabBar ()

@property (nonatomic, strong) UIButton *addButton;
@property (nonatomic, strong) UILabel *addLabel;

@end


@implementation CustomTabBar

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIButton *addBtn = [[UIButton alloc] init];
        
        [addBtn setBackgroundImage:[UIImage imageNamed:ADDBUTTONIMAGENAME] forState:UIControlStateNormal];
        
        [addBtn addTarget:self action:@selector(addBtnDidClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:addBtn];
        
        self.addButton = addBtn;
    }
    return self;
}

- (void)addBtnDidClick {
    if (self.customTabBarDelegate && [self.customTabBarDelegate respondsToSelector:@selector(addButtonClick:)]) {
        [self.customTabBarDelegate addButtonClick:self];
    }
}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    Class UIBarBackgroundClass = NSClassFromString(@"_UIBarBackground");
    for (UIView *sonView in self.subviews) {
        if ([sonView isKindOfClass:UIBarBackgroundClass]) {
            for (UIView *subView in sonView.subviews) {
                if ([subView isKindOfClass:[UIImageView class]] && subView.bounds.size.height <= 1) {
                    UIImageView *line = (UIImageView *)subView;
                    line.hidden = YES;
                }
            }
        }
    }
    
    CGSize addBtnSize = self.addButton.currentBackgroundImage.size;
    self.addButton.frame = CGRectMake(0, 0, addBtnSize.width, addBtnSize.height);
    
    CGPoint addBtnCenter = self.addButton.center;
    addBtnCenter.x = self.center.x;
    addBtnCenter.y = self.bounds.size.height * 0.5 - ADDBUTTONMARGIN;
    self.addButton.center = addBtnCenter;
    
    UILabel *addLabel = [[UILabel alloc] init];
    addLabel.text = ADDLABELTEXT;
    addLabel.font = [UIFont systemFontOfSize:10];
    addLabel.textColor = [UIColor grayColor];
    [addLabel sizeToFit];
    self.addLabel = addLabel;
    [self addSubview:_addLabel];
    
    CGPoint addLabelCenter = addLabel.center;
    addLabelCenter.x = self.addButton.center.x;
    addLabelCenter.y = CGRectGetMaxY(self.addButton.frame) + ADDBUTTONMARGIN;
    _addLabel.center = addLabelCenter;
    
    int btnIndex = 0;
    Class class = NSClassFromString(@"UITabBarButton");
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:class]) {
            
            CGRect viewRect = view.frame;
            
            viewRect.size.width = self.frame.size.width / ITEMCOUNT;
            
            viewRect.origin.x = view.bounds.size.width * btnIndex;
            
            view.frame = viewRect;
            
            btnIndex++;
            
            if (btnIndex == ITEMCOUNT/2) {
                btnIndex++;
            }
        }
    }
    [self bringSubviewToFront:self.addButton];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (self.isHidden == NO) {
        CGPoint newA = [self convertPoint:point toView:self.addButton];
        CGPoint newL = [self convertPoint:point toView:self.addLabel];
        
        if ([self.addButton pointInside:newA withEvent:event]) {
            return self.addButton;
        }
        else if ([self.addLabel pointInside:newL withEvent:event]) {
            return self.addButton;
        }else {
            return [super hitTest:point withEvent:event];
        }
    }else {
        return [super hitTest:point withEvent:event];
    }
}

@end
