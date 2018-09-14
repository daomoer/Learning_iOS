//
//  Test_RunTime_VC6.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Test_RunTime_VC6.h"
#import <objc/message.h>

@interface Test_RunTime_VC6 ()

@end

@implementation Test_RunTime_VC6

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self getAllIvars];
    [self getAllMethods];
}
#pragma mark - 获取 `UISwitch` 所有属性
-(void)getAllIvars {
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([UISwitch class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        NSString *ivarType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        NSLog(@"name == %@,type == %@",ivarName,ivarType);
    }
}

#pragma mark - 获取 `UISwitch` 所有方法
-(void)getAllMethods {
    unsigned int count = 0;
    Method *methods = class_copyMethodList([UISwitch class], &count);
    for (int i = 0; i < count; i ++) {
        SEL address = method_getName(methods[i]);
        NSString *methodName = [NSString stringWithCString:sel_getName(address) encoding:NSUTF8StringEncoding];
        NSLog(@"methodName == %@",methodName);
    }
}


@end
