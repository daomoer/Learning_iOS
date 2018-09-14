//
//  NSArray+No_Crash.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/10.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "NSArray+No_Crash.h"
#import <objc/message.h>

@implementation NSArray (No_Crash)

+(void)load{
    [super load];
    // 方法交换只需要执行一次就行，所以写在load里面
    Method oldObjectAtIndex = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(objectAtIndex:));
    Method newObjectAtIndex = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(objectAtSafeIndex:));
    method_exchangeImplementations(oldObjectAtIndex, newObjectAtIndex);
}

-(id)objectAtSafeIndex:(NSUInteger)index{
    if(index > self.count - 1 || !self.count) {
        @try {
            return [self objectAtSafeIndex:index];
        }
        @catch (NSException *exception) {
            NSLog(@"exception:%@", exception.reason);
            return nil;
        }
    }else {
        return [self objectAtSafeIndex:index];
    }
}

@end
