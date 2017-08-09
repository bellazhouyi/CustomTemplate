//
//  BaseModel.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/7/10.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

@property(nonatomic, copy) NSString *errorMsg;
@property(nonatomic, copy) NSString *errorCode;

@property(nonatomic, copy) NSString *successMsg;
@property(nonatomic, copy) NSString *successCode;

@end
