//
//  ChangeToJson.h
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 *  转换成JSON字符串
 *
 */
@interface ChangeToJson : NSObject

/*
 *  将字典或者数组转换成JSONData
 */
+ (NSData *)toJsonData:(id)theData;
/*
 *  将JSONData转换成Json字符串
 */
+ (NSString *)stringFromJsonData:(NSData *)jsonData;

@end
