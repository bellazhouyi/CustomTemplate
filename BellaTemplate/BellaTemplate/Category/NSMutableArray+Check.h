//
//  NSMutableArray+Check.h
//  HHJ_Shell
//
//  Created by 航汇聚科技 on 2017/7/7.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Check)

///审查 添加到可变数组的值是否为 nil
- (void)checkAddObject:(id)anObject;

///审查 插入可变数组的值 是否为nil
- (void)checkInsertObject:(id)anObject atIndex:(NSUInteger)index;


/// 审查 代替的值 是否 为nil
- (void)checkReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

///数组是否 越界
- (id)checkObjectAtIndex:(NSUInteger)index;

@end
