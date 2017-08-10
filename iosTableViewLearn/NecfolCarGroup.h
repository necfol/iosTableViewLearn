//
//  NecfolCarGroup.h
//  iosTableViewLearn
//
//  Created by necfol on 2017/8/10.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NecfolCarGroup : NSObject

/** 头部标题*/
@property (nonatomic, strong) NSString *header;

/** 尾部标题*/
@property (nonatomic, strong) NSString *footer;

/** 所有车辆模型*/
@property (nonatomic, strong) NSArray *cars;


@end
