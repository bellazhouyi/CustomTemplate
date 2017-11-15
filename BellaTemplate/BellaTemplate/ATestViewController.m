//
//  ATestViewController.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/14.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "ATestViewController.h"

@interface ATestViewController ()

@end

@implementation ATestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  //  [self replaceDefaultNavBar:[self tempNav]];
    
//    self.rightButtonHidden = NO;
//    [self.rightButton setTitle:@"👉" forState:UIControlStateNormal];
    [self.centerButton setTitle:@"You know" forState:UIControlStateNormal];
    [self.leftButton setTitle:@"👈" forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)tempNav {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 344, 80)];
    view.backgroundColor = [UIColor redColor];
    return view;
}

- (void)defaultLeftBtnClick {
    NSLog(@"left: %@",self.leftButton.titleLabel.text);
    [super defaultLeftBtnClick];
}
@end
