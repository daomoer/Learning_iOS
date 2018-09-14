//
//  Test_RunTime_VC7.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Test_RunTime_VC7.h"

@interface Test_RunTime_VC7 ()

@end

@implementation Test_RunTime_VC7

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    int index = 4;
    NSArray *array = @[@"A",@"B",@"C"];
    [array objectAtIndex:index];

}


@end
