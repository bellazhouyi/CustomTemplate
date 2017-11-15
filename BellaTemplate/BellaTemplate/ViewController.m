//
//  ViewController.m
//  HHJ_Shell
//
//  Created by 航汇聚科技 on 2017/7/7.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import "ViewController.h"

#import "NSMutableDictionary+Check.h"
#import "NSMutableArray+Check.h"
#import "NSMutableString+Check.h"

#import "ATestViewController.h"

static NSString *cellIdentifier = @"cell";

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_tableView;
    
    NSMutableArray *_array;
}
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

+ (void)load {
    [super load];
    
    NSLog(@"load");
}

+ (void)initialize {
    [super initialize];
    
    NSLog(@"initilize");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadTableView];
    
    NSLog(@"viewDidLoad");
}

- (void)loadTableView {
    _array = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", @"4", nil];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _array.count + 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [_array checkObjectAtIndex:indexPath.section];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ATestViewController *aTestVC = [[ATestViewController alloc] init];
    aTestVC.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:aTestVC animated:YES];
}


@end
