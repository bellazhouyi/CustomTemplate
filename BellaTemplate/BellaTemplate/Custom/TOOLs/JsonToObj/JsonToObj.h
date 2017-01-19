//
//  JsonToObj.h
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 *  JSON字符串转换成对象
 *
 */
@interface JsonToObj : NSObject
/*
 *  把格式化的JSON格式的字符串转换成字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

@end
