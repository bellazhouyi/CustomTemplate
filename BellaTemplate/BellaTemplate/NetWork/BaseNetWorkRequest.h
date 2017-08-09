//
//  BaseNetWorkRequest.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/7/10.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <Foundation/Foundation.h>


@class AFHTTPSessionManager, BaseModel;

///Block定义
typedef void(^NetWorkRequestSuccess)(BaseModel *successModel);
typedef void(^NetWorkRequestFailure)(BaseModel *failureModel);

@interface BaseNetWorkRequest : NSObject
{
    AFHTTPSessionManager *_manager;
}

/*
 * 网络请求成功Block
 */
@property(nonatomic, copy) NetWorkRequestSuccess NetWorkRequestSuccess;
/*
 * 网络请求失败Block
 */
@property(nonatomic, copy) NetWorkRequestFailure NetWorkRequestFailure;


+ (instancetype)sharedBaseNetWorkRequest;

@end
