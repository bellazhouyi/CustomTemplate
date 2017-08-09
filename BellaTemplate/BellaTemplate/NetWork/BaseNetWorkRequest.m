//
//  BaseNetWorkRequest.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/7/10.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "BaseNetWorkRequest.h"

///第三方库
#import "AFNetworking.h"

///自定义.h文件
#import "BaseModel.h"

@implementation BaseNetWorkRequest

+ (instancetype)sharedBaseNetWorkRequest {
    static BaseNetWorkRequest *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [BaseNetWorkRequest new];
        
        instance->_manager = [AFHTTPSessionManager manager];
        //超时设置
        instance->_manager.requestSerializer.timeoutInterval = 30;
        
        //解决https一直报 -999
        AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
        //开启证书验证的,没这个  就不验证证书  https不验证证书是不通过的
        securityPolicy.allowInvalidCertificates = YES;
        [securityPolicy setValidatesDomainName:NO];
        instance->_manager.securityPolicy = securityPolicy;
        
        //申明返回的结果是json类型
        instance->_manager.responseSerializer = [AFJSONResponseSerializer serializer];
        //申明请求的数据是json类型
        instance->_manager.requestSerializer=[AFJSONRequestSerializer serializer];
        //如果报接受类型不一致请替换一致text/html或别的
        instance->_manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/json", @"application/json",  @"text/javascript", @"text/html",@"text/plain", nil];
    });
    return instance;
}

- (void)postRequestURLStr:(NSString *)urlStr parameters:(id)parameters {
    [_manager POST:urlStr parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}


@end
