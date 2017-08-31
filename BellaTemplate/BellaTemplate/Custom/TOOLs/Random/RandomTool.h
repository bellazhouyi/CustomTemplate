//
//  RandomTool.h
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/8/31.
//  Copyright © 2017年 bella. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;
/*
 * 生成随机 工具
 */
@interface RandomTool : NSObject

/*
 * 随机色
 */
+ (UIColor *)getRandomColor;

/*
 * 随机数 [from,to]
 * @param from 
 * @param to
 */
+ (int)getRandomNumber:(int)from to:(int)to;

@end
