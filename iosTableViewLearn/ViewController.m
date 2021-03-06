//
//  ViewController.m
//  iosTableViewLearn
//
//  Created by necfol on 2017/8/10.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "NecfolCar.h"
#import "NecfolCarGroup.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *groups;
@end

@implementation ViewController

-(NSArray *)groups {
    if (_groups == nil) {
//        NecfolCarGroup *carGroup = [[NecfolCarGroup alloc] init];
//        carGroup.header = @"焦点科技";
//        carGroup.footer = @"焦点科技666";
//        carGroup.cars = @[
//                          [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
//                          [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
//                          ];
//        _groups = @[carGroup];
        _groups = @[
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                  ];
    }
    return _groups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] init];
    self.tableView.frame = self.view.bounds;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 100;
    [self.view addSubview:self.tableView];
}

/**
 告诉tableview一共有多少组数据
 */
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//        return self.groups.count;
    return 1;
}

/**
 显示什么
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    UITableViewCell *cell = [UITableViewCell new];
//    NecfolCarGroup * group = self.groups[indexPath.section];
//    NecfolCar *car = group.cars[indexPath.row];
//    cell.textLabel.text = car.name;
//    return cell;
//    被static修饰的局部变量，只会初始化一次，在整个程序运行过程中，只有一份内存
    static NSString *ID = @"aa";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    NecfolCar *car = self.groups[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@-----------%zd", car.name, indexPath.row];
    NSLog(@"%p --- %zd", cell, indexPath.row);
    return cell;
}


/**
 每一组有多少行
 */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    NecfolCarGroup *group = self.groups[section];
//    return group.cars.count;
    return self.groups.count;
}

//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    NecfolCarGroup *group = self.groups[section];
//    return group.header;
//}
//
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//    NecfolCarGroup *group = self.groups[section];
//    return group.footer;
//}

@end
