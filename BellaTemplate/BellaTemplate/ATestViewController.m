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

+ (void)load {
    [super load];
    
    NSLog(@"ATestViewController load");
}
+ (void)initialize {
    [super initialize];
    
    NSLog(@"ATestViewController initilize");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self replaceDefaultNavBar:[self tempNav]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self defaultLeftBtnClick];
}

- (UIView *)tempNav {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.height, 80)];
    view.backgroundColor = [UIColor redColor];
    return view;
}
@end
