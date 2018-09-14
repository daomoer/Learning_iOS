//
//  ViewController.m
//  Test_RunTime
//
//  Created by Domo on 2018/9/7.
//  Copyright © 2018年 知言网络. All rights reserved.
//

#import "ViewController.h"
#import "Test_RunTime_VC1.h"
#import "Test_RunTime_VC2.h"
#import "Test_RunTime_VC3.h"
#import "Test_RunTime_VC4.h"
#import "Test_RunTime_VC5.h"
#import "Test_RunTime_VC6.h"
#import "Test_RunTime_VC7.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

-(UITableView *)tableView{
    if (!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

-(NSArray *)dataSource{
    if(!_dataSource){
        _dataSource = [[NSArray alloc] initWithObjects:@"动态的给分类添加属性",@"动态的添加方法",@"动态的交换两个方法",@"字典转模型",@"归档与解归档",@"获取所有的属性和方法(包括私有)",@"防止数组越界崩溃",nil];
    }
    return _dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"RunTime";
    [self.view addSubview:self.tableView];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cellIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            Test_RunTime_VC1 *vc1 = [[Test_RunTime_VC1 alloc] init];
            vc1.title = self.dataSource[indexPath.row];
            [self.navigationController pushViewController:vc1 animated:YES];
            break;
        }
        case 1:{
            Test_RunTime_VC2 *vc2 = [[Test_RunTime_VC2 alloc] init];
            vc2.title = self.dataSource[indexPath.row];
            [self.navigationController pushViewController:vc2 animated:YES];
            break;
        }
        case 2:{
            Test_RunTime_VC3 *vc3 = [[Test_RunTime_VC3 alloc] init];
            vc3.title = self.dataSource[indexPath.row];
            [self.navigationController pushViewController:vc3 animated:YES];
            break;
        }
        case 3:{
            Test_RunTime_VC4 *vc4 = [[Test_RunTime_VC4 alloc] init];
            vc4.title = self.dataSource[indexPath.row];
            [self.navigationController pushViewController:vc4 animated:YES];
            break;
        }
        case 4:{
            Test_RunTime_VC5 *vc5 = [[Test_RunTime_VC5 alloc] init];
            vc5.title = self.dataSource[indexPath.row];
            [self.navigationController pushViewController:vc5 animated:YES];
            break;
        }
        case 5:{
            Test_RunTime_VC6 *vc6 = [[Test_RunTime_VC6 alloc] init];
            vc6.title = self.dataSource[indexPath.row];
            [self.navigationController pushViewController:vc6 animated:YES];
            break;
        }
        case 6:{
            Test_RunTime_VC7 *vc7 = [[Test_RunTime_VC7 alloc] init];
            vc7.title = self.dataSource[indexPath.row];
            [self.navigationController pushViewController:vc7 animated:YES];
            break;
        }

        default:
            break;
    }
}


@end
