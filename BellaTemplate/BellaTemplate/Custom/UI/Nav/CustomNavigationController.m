//
//  CustomNavigationController.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "CustomNavigationController.h"

@interface CustomNavigationController ()

@end

@implementation CustomNavigationController

- (void)awakeFromNib {
    [super awakeFromNib];
    //隐藏bar
    self.navigationBar.hidden = YES;
    
    //使右滑返回手势可用，若为YES，则取消右滑返回手势
    self.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
