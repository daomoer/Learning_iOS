//
//  YYModel.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/10.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "YYModel.h"
#import <objc/message.h>

@implementation YYModel

-(void)encodeWithCoder:(NSCoder *)aCoder{
    unsigned int count = 0;
    // 获取所有的属性列表
    Ivar *ivars = class_copyIvarList([YYModel class], &count);
    for (int i = 0; i < count; i ++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *nameStr = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
        id value = [self valueForKey:nameStr];
        [aCoder encodeObject:value forKey:nameStr];
    }
    //C语言中Copy需要手动释放
    free(ivars);
}


- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        unsigned int count = 0;
        Ivar *ivars = class_copyIvarList([YYModel class], &count);
        for (int i = 0; i < count; i ++) {
            Ivar ivar = ivars[i];
            const char *name = ivar_getName(ivar);
   
            NSString *key = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            id value = [decoder decodeObjectForKey:key];
            
            [self setValue:value forKey:key];
        }
        
        free(ivars);
    }
    return self;
}


@end
