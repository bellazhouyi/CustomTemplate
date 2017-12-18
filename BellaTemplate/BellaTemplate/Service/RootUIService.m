//
//  RootUIService.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/15.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "RootUIService.h"

@implementation RootUIService

+ (void)load {
    [ZYAppDelegate registerService:[[RootUIService alloc] init]];
}
- (NSString *)serviceName {
    return @"RootUI";
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

@end
