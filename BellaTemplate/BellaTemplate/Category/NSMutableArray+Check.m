//
//  NSMutableArray+Check.m
//  HHJ_Shell
//
//  Created by 航汇聚科技 on 2017/7/7.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import "NSMutableArray+Check.h"

@implementation NSMutableArray (Check)

//FIXME: 审查 添加到可变数组的值是否为 nil
- (void)checkAddObject:(id)anObject {
    if (anObject) {
        [self addObject:anObject];
    }
}

//FIXME: 审查 插入可变数组的值 是否为nil
- (void)checkInsertObject:(id)anObject atIndex:(NSUInteger)index {
    if (anObject && index < self.count) {
        [self insertObject:anObject atIndex:index];
    }
}

//FIXME: 审查 代替的值 是否 为nil
- (void)checkReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    if (index < self.count && anObject) {
        [self replaceObjectAtIndex:index withObject:anObject];
    }
}

//FIXME: 审查数组 越界
- (id)checkObjectAtIndex:(NSUInteger)index {
    if (index < self.count) {
        return [self objectAtIndex:index];
    }
    return nil;
}

@end
