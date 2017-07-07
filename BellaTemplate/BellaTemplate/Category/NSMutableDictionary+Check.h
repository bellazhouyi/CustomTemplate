//
//  NSMutableDictionary+Check.h
//  HHJ_Shell
//
//  Created by 航汇聚科技 on 2017/7/7.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Check)

///审查 插入的anObject和aKey 是否为 nil
- (void)checkSetObject:(id)anObject forKey:(NSString *)aKey;


///审查 插入的aKey 是否为nil
- (void)checkSetValue:(id)anValue forKey:(NSString *)aKey;
@end
