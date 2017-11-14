//
//  main.m
//  BellaTemplate
//
//  Created by ANine on 19/01/2017.
//  Copyright © 2017 bella. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        void(^test)(NSString *name);
        NSInteger a = 10;
        __block typeof(a) weakA = a;
        NSString *b = [NSString stringWithFormat:@"%@",@"name"];;
        __block typeof(b) weakB = b;
        
        test = ^(NSString *name) {
            weakA = 20;
            weakB = @"aha";
        };
        test(@"name");
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
