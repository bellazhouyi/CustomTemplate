//
//  SystemParam.h
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * 获取系统参数
 */
@interface SystemParam : NSObject

//MARK:Device
/* 本机昵称 */
+ (NSString *)currentDeviceName;
/* 本机系统名字 */
+ (NSString *)currentDeviceSystemName;
/* 本机系统版本号 */
+ (NSString *)currentDeviceSystemVersion;
+ (NSString *)currentDeviceModel;
+ (NSString *)currentDeviceLocalizedModel;

//MARK:s
/* 系统语言 */
+ (NSString *)currentSystemLanguage;

//MARK:Local
/* 当前所在地使用语言 */
+ (NSString *)currentLocalLanguage;
/* 当前所在地信息 */
+ (NSString *)currentLocalDisplayName;



@end
