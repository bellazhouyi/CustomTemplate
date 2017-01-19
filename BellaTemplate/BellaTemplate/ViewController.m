//
//  ViewController.m
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import "ViewController.h"
#import "ChangeToJson.h"
#import "JsonToObj.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"您好");
    NSLog(@"0--%@",@{@"3":@"6", @"4":@"8"});
    NSString *str = [ChangeToJson stringFromJsonData:[ChangeToJson toJsonData:@{@"3":@"6", @"4":@"8"}]];
    NSLog(@"1--%@",str);
    
    NSLog(@"2--%@",[JsonToObj dictionaryWithJsonString:str]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
