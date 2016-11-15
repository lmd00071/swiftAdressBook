//
//  DDPerson.h
//  Swift通讯录
//
//  Created by 嗒嗒修车 on 16/8/20.
//  Copyright © 2016年 lmd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDPerson : NSObject

@property (nonatomic,strong)NSString *name;

@property (nonatomic,strong)NSString *number;

-(void)shuchu:(NSString *)name and:(int)age withSex:(NSInteger)sex;


@end
