//
//  Domo.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Domo.h"
#import <objc/message.h>

@implementation Domo

// 动态添加的方法
void Run(id self, SEL _cmd) {
    NSLog(@"Domo run run run");
}

// 判断对象方法有没有实现
+(BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel == NSSelectorFromString(@"Run")) {
        // 动态添加的方法需转化为IMP类型
        class_addMethod(self, sel, (IMP)Run, "v@:");
        return YES;
    }
    // 防止覆盖系统犯法
    return [super resolveInstanceMethod:sel];
}

@end
