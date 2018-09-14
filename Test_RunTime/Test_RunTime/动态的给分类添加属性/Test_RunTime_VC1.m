//
//  Test_RunTime_VC1.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Test_RunTime_VC1.h"
#import "Person.h"
#import "Person+Domo.h"

@interface Test_RunTime_VC1 ()

@end

@implementation Test_RunTime_VC1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    Person *domo = [[Person alloc] init];
    domo.sex = @"nan";
    domo.name = @"Domo";
    domo.skills = @[@"C",@"OC",@"Swift"];
    domo.age = @{@"age":@"26"};
    NSLog(@"\n%@,\n%@,\n%@,\n%@",domo.sex,domo.name,domo.skills,domo.age);
    
}


@end
