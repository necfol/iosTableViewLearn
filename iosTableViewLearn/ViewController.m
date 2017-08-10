//
//  ViewController.m
//  iosTableViewLearn
//
//  Created by necfol on 2017/8/10.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
//    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.top.bottom.equalTo(self.view);
//    }];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = @"测试";
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
