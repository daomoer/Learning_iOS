//
//  YYModel.h
//  Test_RunTime
//
//  Created by Domo on 2018/9/10.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import <Foundation/Foundation.h>
// 实现归档和解归档的前提是遵循NSCoding协议
@interface YYModel : NSObject<NSCoding>

@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *nickName;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, assign) NSInteger age;

@end

