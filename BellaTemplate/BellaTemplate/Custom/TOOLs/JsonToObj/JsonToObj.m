//
//  JsonToObj.m
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import "JsonToObj.h"

@implementation JsonToObj

#pragma mark -- 把格式化的JSON格式的字符串转换成字典
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *err;
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                         
                                                        options:NSJSONReadingMutableContainers
                         
                                                          error:&err];
    
    if(err) {
        
        NSLog(@"json解析失败：%@",err);
        return nil;
        
    }
    return dic;
    
}

@end
