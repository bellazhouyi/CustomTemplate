//
//  RandomTool.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/8/31.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "RandomTool.h"

@implementation RandomTool


+ (UIColor *)getRandomColor {
    CGFloat hue = (arc4random() %256/256.0);
    
    CGFloat saturation = (arc4random() %128/256.0) +0.5;
    
    CGFloat brightness = (arc4random() %128/256.0) +0.5;
    
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
    return color;
}

+ (int)getRandomNumber:(int)from to:(int)to {
    return (int)(from + (arc4random() % ((to - from) + 1)));
}

@end
