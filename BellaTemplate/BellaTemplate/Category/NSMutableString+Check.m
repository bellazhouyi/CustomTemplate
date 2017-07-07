//
//  NSMutableString+Check.m
//  HHJ_Shell
//
//  Created by 航汇聚科技 on 2017/7/7.
//  Copyright © 2017年 Yi Zhou. All rights reserved.
//

#import "NSMutableString+Check.h"

@implementation NSMutableString (Check)

//FIXME: 审查 添加到 可变字符串的 值是否为nil
- (void)checkAppendingString:(id)aString {
    if (aString) {
        [self appendString:aString];
    }
}

- (void)checkAppendingFormat:(NSString *)format {
    if (format) {
        [self appendFormat:@"%@", format];
    }
}

//FIXME: 审查 插入到 可变字符串 的 值是否为nil
- (void)checkInsertString:(NSString *)aString atIndex:(NSUInteger)loc {
    if (loc < self.length && aString) {
        [self insertString:aString atIndex:loc];
    }
}

@end
