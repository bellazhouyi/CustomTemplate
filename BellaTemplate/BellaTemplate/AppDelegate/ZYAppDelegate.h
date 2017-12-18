//
//  ZYAppDelegate.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/15.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZYAppService <UIApplicationDelegate>

@required
- (NSString *)serviceName;

@end

@interface ZYAppDelegate : UIResponder<UIApplicationDelegate>

@property (nonatomic, strong) UIWindow *window;

+ (void)registerService:(id<ZYAppService>)service;

@end
