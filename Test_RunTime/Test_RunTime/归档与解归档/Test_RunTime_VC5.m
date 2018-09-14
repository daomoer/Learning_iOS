//
//  Test_RunTime_VC5.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "Test_RunTime_VC5.h"
#import "YYModel.h"

@interface Test_RunTime_VC5 ()

@end

@implementation Test_RunTime_VC5

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    // 假数据填充数据模型
    YYModel *model = [[YYModel alloc] init];
    model.url = @"http:www.baidu.com/imageList/image";
    model.title = @"归档解归档";
    model.nickName = @"domo";
    model.sex = @"man";
    model.age = 18;

    
    //创建路径
    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES)lastObject];
    NSLog(@"documents路径：%@",documentPath);
    NSString *filePath = [documentPath stringByAppendingPathComponent:@"YYModel.data"];
    
    //存储用户信息,归档
    BOOL result = [NSKeyedArchiver archiveRootObject:model toFile:filePath];
    if (result) {
        NSLog(@"归档成功:%@",filePath);
    }else{
        NSLog(@"归档失败");
    }
    
    //解归档后数据打印显示  
    YYModel *yymodel = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"\n url = %@,\n title = %@, \n nickName = %@, \n sex = %@, \n age = %ld",yymodel.url, yymodel.title, yymodel.nickName, yymodel.sex, (long)yymodel.age);
}

@end
