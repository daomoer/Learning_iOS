//
//  Test_RunTime_VC4.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Test_RunTime_VC4.h"
#import "TTModel.h"

@interface Test_RunTime_VC4 ()

@end

@implementation Test_RunTime_VC4

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    NSDictionary *dic = @{
                          @"url"      : @"http:www.baidu.com/imageList/image",
                          @"title"    : @"归档解归档",
                          @"nickName" : @"domo",
                          @"sex"      : @"man",
                          @"age"      : @18
                          };
    TTModel *model = [TTModel modelWithDict:dic];
    NSLog(@"\n url = %@,\n title = %@, \n nickName = %@, \n sex = %@, \n age = %ld",model.url, model.title, model.nickName, model.sex, (long)model.age);
}

@end
