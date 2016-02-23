//
//  BNRColorDescription.m
//  Colorboard
//
//  Created by 郑克明 on 16/2/22.
//  Copyright © 2016年 郑克明. All rights reserved.
//

#import "BNRColorDescription.h"

@implementation BNRColorDescription

-(instancetype)init{
    self = [super init];
    if (self) {
        _color = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
        _name = @"Blue";
    }
    return self;
}
@end
