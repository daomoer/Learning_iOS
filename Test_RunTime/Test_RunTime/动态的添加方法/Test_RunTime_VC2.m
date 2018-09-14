//
//  Test_RunTime_VC2.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Test_RunTime_VC2.h"
#import "Domo.h"

@interface Test_RunTime_VC2 ()

@end

@implementation Test_RunTime_VC2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    Domo *domo = [[Domo alloc] init];
/*
    调用jump方法报以下错误，因为jump方法只是进行了声明并没有实现，所以该方法不存在方法列表中，所以抛出找不到该方法的错误
     [Domo jump]: unrecognized selector sent to instance 0x604000010fe0'
     *** First throw call stack
 */
//    [domo performSelector:@selector(jump)];
    
    // 利用RunTime动态添加方法，调用正常
    [domo performSelector:@selector(Run)];
    
    
}

@end
