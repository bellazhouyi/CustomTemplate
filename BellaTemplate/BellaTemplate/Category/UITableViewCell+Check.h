//
//  UITableViewCell+Check.h
//  HHJ_Shell
//
//  Created by 航汇聚科技 on 2017/7/7.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (Check)

+ (NSIndexPath *)checkIndexPathForRow:(NSInteger)row inSection:(NSInteger)section;

@end
