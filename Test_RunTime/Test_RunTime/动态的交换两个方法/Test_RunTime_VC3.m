//
//  Test_RunTime_VC3.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Test_RunTime_VC3.h"
#import "Sport.h"
#import <objc/message.h>

@interface Test_RunTime_VC3 ()

@end

@implementation Test_RunTime_VC3

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    Sport *sport = [[Sport alloc] init];
    // 先获取Sport对象的两个方法 class_getInstanceMethod，然后利用RunTime的method_exchangeImplementations方法进行交换
    Method swimmingMethod = class_getInstanceMethod([Sport class], @selector(swimming));
    Method footballMethod = class_getInstanceMethod([Sport class], @selector(football));
    method_exchangeImplementations(swimmingMethod, footballMethod);
    // 这里调用已经交换后的方法
    [sport football];
}


@end
