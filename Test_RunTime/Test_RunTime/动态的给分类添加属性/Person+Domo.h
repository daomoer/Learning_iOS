//
//  Person+Domo.h
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Person.h"

@interface Person (Domo)

// 为每个对象添加一个name字符串属性
@property (nonatomic, copy) NSString *name;

// 为每个对象添加一个技能数组属性
@property (nonatomic, strong) NSArray *skills;

// 为每个对象添加一个年龄字典属性
@property (nonatomic, strong) NSDictionary *age;

@end
