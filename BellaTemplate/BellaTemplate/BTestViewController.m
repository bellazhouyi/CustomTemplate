//
//  BTestViewController.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/15.
//  Copyright © 2017年 bella. All rights reserved.
//
//角度换 弧度
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

#import "BTestViewController.h"

@interface BTestViewController ()

@property (nonatomic, strong) UIView *testView;

@end

@implementation BTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.rightButtonHidden = NO;
    [self.rightButton setTitle:@"👉" forState:UIControlStateNormal];
    [self.centerButton setTitle:@"You know" forState:UIControlStateNormal];
    [self.leftButton setTitle:@"👈" forState:UIControlStateNormal];
    
    [self.view addSubview:self.testView];
    self.testView.transform = CGAffineTransformMakeRotation(-45);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static int angle = 0;
static int originalAngle = -45;
static int lastNumber = -3;
static int firstNumber = -9;
static BOOL turn = YES;
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //每格 270/30 = 9°
    angle = (lastNumber - firstNumber) * (270 / 30 );
    
    [UIView animateWithDuration:2. animations:^{
        self.testView.transform = CGAffineTransformMakeRotation((angle + originalAngle) * M_PI / 180);
        NSLog(@"M_PI / 180 = %f",M_PI / 180);
        NSLog(@"→：angle 👉 %d , 中间转的：%d",angle , angle - originalAngle);

        if (turn) {
            self.testView.backgroundColor = [UIColor greenColor];
        }else {
            self.testView.backgroundColor = [UIColor blueColor];
        }
        turn = !turn;
        lastNumber += 3;
        firstNumber+= 1;
    }];
}

- (UIView *)testView {
    if (!_testView) {
        _testView = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 20, 100)];
        _testView.backgroundColor = [UIColor blueColor];
        
        _testView.layer.anchorPoint = CGPointMake(0.5, 1.0);
        _testView.transform = CGAffineTransformMakeRotation(originalAngle);
        UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(8, 96, 4, 4)];
        [_testView addSubview:bottomView];
        bottomView.backgroundColor = [UIColor whiteColor];
    }
    return _testView;
}

- (void)defaultRightBtnClick {
    NSLog(@"→：%@",self.rightButton.titleLabel.text);
}

@end
