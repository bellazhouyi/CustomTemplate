//
//  NSMutableDictionary+Check.m
//  HHJ_Shell
//
//  Created by 航汇聚科技 on 2017/7/7.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import "NSMutableDictionary+Check.h"

@implementation NSMutableDictionary (Check)

//FIXME: 审查 插入的anObject和aKey 是否为 nil
- (void)checkSetObject:(id)anObject forKey:(NSString *)aKey {
    if (aKey && anObject) {
        [self setObject:anObject forKey:aKey];
    }
}

//FIXME: 审查 插入的aKey 是否为nil
- (void)checkSetValue:(id)anValue forKey:(NSString *)aKey {
    if (aKey) {
        [self setValue:anValue forKey:aKey];
    }
}

@end
