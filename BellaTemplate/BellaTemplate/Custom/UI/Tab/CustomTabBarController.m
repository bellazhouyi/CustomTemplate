//
//  CustomTabBarController.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "CustomTabBarController.h"
#import "CustomTabBar.h"

@interface CustomTabBarController ()<CustomTabBarDelegate>

@end

@implementation CustomTabBarController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CustomTabBar *customTabBar = [[CustomTabBar alloc] init];
    customTabBar.customTabBarDelegate = self;
    
    //KVC
    [self setValue:customTabBar forKey:@"tabBar"];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.tabBar.tintColor = [UIColor colorWithRed:89/255. green:217/255. blue:247/255. alpha:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addButtonClick:(CustomTabBar *)tabBar {
    NSLog(@"中间的");
}

@end
