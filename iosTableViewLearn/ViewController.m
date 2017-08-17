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

- (void)viewDidLoad {
    [super viewDidLoad];
    NecfolCarGroup *carGroup = [[NecfolCarGroup alloc] init];
    carGroup.header = @"焦点科技";
    carGroup.footer = @"焦点科技666";
    carGroup.cars = @[
                      [NecfolCar carWithName:@"MIC" AndIcon:@"ued"],
                      [NecfolCar carWithName:@"UED" AndIcon:@"ued"],
                      ];
    self.groups = @[carGroup];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

/**
 告诉tableview一共有多少组数据
 */
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
        return self.groups.count;
}

/**
 显示什么
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [UITableViewCell new];
    NecfolCarGroup * group = self.groups[indexPath.section];
    NecfolCar *car = group.cars[indexPath.row];
    cell.textLabel.text = car.name;
    return cell;
}


/**
 每一组有多少行
 */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NecfolCarGroup *group = self.groups[section];
    return group.cars.count;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NecfolCarGroup *group = self.groups[section];
    return group.header;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    NecfolCarGroup *group = self.groups[section];
    return group.footer;
}

@end
