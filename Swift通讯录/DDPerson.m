//
//  DDPerson.m
//  Swift通讯录
//
//  Created by 嗒嗒修车 on 16/8/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

-(NSString *)name
{
    if (_name == nil) {
        _name = @"李明丹";
    }
    return _name;
}


-(NSString *)number
{
    if (_number == nil) {
        _number = @"12222222222";
    }
    return _number;
}

-(void)shuchu:(NSString *)name and:(int)age withSex:(NSInteger)sex;
{
    self.name = name;
    self.number = [NSString stringWithFormat:@"%dand%ld",age,sex];
}

@end
