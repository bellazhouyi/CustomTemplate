//
//  CTestViewController.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/12/15.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "CTestViewController.h"

#import "UIViewController+BarButton.h"

@interface CTestViewController ()

@property (nonatomic, strong) UIView *tempReturnView;

@end

@implementation CTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addLeftBarButtonWithImage:[UIImage imageNamed:@"returnImage"] action:@selector(customPopToViewController:animated:)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)customPopToViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
