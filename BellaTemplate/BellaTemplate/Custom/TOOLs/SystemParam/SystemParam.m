//
//  SystemParam.m
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import "SystemParam.h"
@import UIKit;

@implementation SystemParam

//MARK:Device
+ (NSString *)currentDeviceName {
    return [[UIDevice currentDevice] name];
}
+ (NSString *)currentDeviceSystemName {
    return [[UIDevice currentDevice] systemName];
}
+ (NSString *)currentDeviceSystemVersion {
    return [[UIDevice currentDevice] systemVersion];
}
+ (NSString *)currentDeviceModel {
    return [[UIDevice currentDevice] model];
}
+ (NSString *)currentDeviceLocalizedModel {
    return [[UIDevice currentDevice] localizedModel];
}

//MARK:s
+ (NSString *)currentSystemLanguage {
    NSArray *languages = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    return [languages firstObject];
}

//MARK:Local
+ (NSString *)currentLocalLanguage {
    NSLocale *currentLocal = [NSLocale currentLocale];
    return [currentLocal objectForKey:NSLocaleLanguageCode];
}
+ (NSString *)currentLocalDisplayName {
    NSString *identifier = [[NSLocale currentLocale] localeIdentifier];
    return [[NSLocale currentLocale] displayNameForKey:NSLocaleIdentifier value:identifier];
}

@end
