//
//  Person+Domo.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Person+Domo.h"
#import <objc/message.h>
@implementation Person (Domo)

// 为分类动态的添加属性，其本质就是将某个属性与对象进行关联
static char nameKey;
-(void)setName:(NSString *)name{
    objc_setAssociatedObject(self, &nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSString *)name{
    return objc_getAssociatedObject(self, &nameKey);
}

static char skillKey;
-(void)setSkills:(NSArray *)skills{
    objc_setAssociatedObject(self, &skillKey, skills, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSArray *)skills{
    return objc_getAssociatedObject(self, &skillKey);
}

static char ageKey;
-(void)setAge:(NSDictionary *)age{
    objc_setAssociatedObject(self, &ageKey, age, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSDictionary *)age{
    return objc_getAssociatedObject(self, &ageKey);
}

@end
