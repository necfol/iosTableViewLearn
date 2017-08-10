//
//  NecfolCar.h
//  iosTableViewLearn
//
//  Created by necfol on 2017/8/10.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NecfolCar : NSObject

/** 名字*/
@property (nonatomic, strong) NSString *name;

/** 图标*/
@property (nonatomic, strong) NSString *icon;

+ (instancetype) carWithName:(NSString *)name AndIcon:(NSString *) icon;

@end
