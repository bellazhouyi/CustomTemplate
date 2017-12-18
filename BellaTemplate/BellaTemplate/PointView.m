//
//  PointView.m
//  BellaTemplate
//
//  Created by 航汇聚科技 on 2017/11/16.
//  Copyright © 2017年 bella. All rights reserved.
//

#import "PointView.h"

@interface PointView()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation PointView

- (void)awakeFromNib {
    [super awakeFromNib];
//    CGRect frame = self.pointImgView.frame;
//    frame.origin.x = frame.origin.x - frame.size.width / 2;
//    frame.origin.y = frame.origin.y - frame.size.height / 2;
//    self.pointImgView.frame = frame;
    self.pointImgView.layer.anchorPoint = CGPointMake(0.5f, .9f);
    self.pointImgView.transform = CGAffineTransformMakeRotation(-45);
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(countTime) userInfo:nil repeats:YES];

}


- (void)dealloc {
    _timer = nil;
}

static int originalTime = 40; //-45°
static int totolTime = 60; //90°
- (void)countTime {
    if (originalTime == 20) {
        [_timer invalidate];
        _timer = nil;
        return;
    }
    
    [UIView animateWithDuration:1.0f animations:^{
        CGFloat angle = originalTime * [self eachSecondAngle];
        self.pointImgView.transform = CGAffineTransformMakeRotation(angle / 108 * M_PI);
    }];
    originalTime--;
}

- (float)eachAngle {
    //24块
    //360°
    return 360 / 24;
}

- (float)eachSecondAngle {
    return [self eachAngle] / 5 ;
}
@end
