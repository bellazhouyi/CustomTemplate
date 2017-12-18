//
//  ZYAppDelegate.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/15.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "ZYAppDelegate.h"
#import <objc/message.h>

@interface ZYAppDelegate ()

@property (nonatomic, strong) NSDictionary *servicesMap;

@end

@implementation ZYAppDelegate

- (BOOL)respondsToSelector:(SEL)aSelector {
    __block IMP imp = [self methodForSelector:aSelector];
    BOOL canResponse = (imp != NULL && imp != _objc_msgForward);
    if (!canResponse) {
        [_servicesMap enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            if ([obj respondsToSelector:aSelector]) {
                imp = [(id)obj methodForSelector:aSelector];
                *stop = YES;
            }
        }];
        canResponse = (imp != NULL && imp != _objc_msgForward);
    }
    return canResponse;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    [self.servicesMap enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if (![obj respondsToSelector:anInvocation.selector]) {
            return ;
        }
        [anInvocation invokeWithTarget:obj];
    }];
}

+ (void)registerService:(id<ZYAppService>)service {
    
}

@end
