//
//  ChangeToJson.m
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import "ChangeToJson.h"

@implementation ChangeToJson

#pragma mark -- 将字典或者数组转换成JSONData
+ (NSData *)toJsonData:(id)theData {
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:theData options:NSJSONWritingPrettyPrinted error:&error];
    if ([jsonData length] && error == nil) {
        return jsonData;
    }
    return nil;
}
#pragma mark -- 将JSONData转换成Json字符串
+ (NSString *)stringFromJsonData:(NSData *)jsonData {
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}


@end
