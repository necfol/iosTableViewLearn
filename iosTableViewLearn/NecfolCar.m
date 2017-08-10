//
//  NecfolCar.m
//  iosTableViewLearn
//
//  Created by necfol on 2017/8/10.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NecfolCar.h"

@implementation NecfolCar

+(instancetype)carWithName:(NSString *)name AndIcon:(NSString *)icon
{
    NecfolCar *car = [[NecfolCar alloc] init];
    car.name = name;
    car.icon = icon;
    return car;
}
@end
