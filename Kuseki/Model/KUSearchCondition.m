//
//  KUSearchCondition.m
//  Kuseki
//
//  Created by Takeru Yoshihara on 2014/01/29.
//  Copyright (c) 2014年 Takeru Yoshihara. All rights reserved.
//

#import "KUSearchCondition.h"
#import "KUDBClient.h"

@implementation KUSearchCondition

- (id)initWithDictionary:(NSDictionary*)dic
{
    self = [super init];
    
    if (!self) {
        return nil;
    }
    
    _identifier = dic[@"identifier"];
    _month = dic[@"month"];
    _day = dic[@"day"];
    _hour = dic[@"hour"];
    _minute  = dic[@"minute"];
    _train = dic[@"train"];
    _dep_stn = dic[@"dep_stn"];
    _arr_stn = dic[@"arr_stn"];
    
    return self;
    
}


- (void)postCondition
{
    KUDBClient *client = [KUDBClient sharedClient];
    [client  createTableWithName:KU_TABLE_CONDITIONS];
    [client insertCondition:self];
}

- (void)deleteCondition
{
    KUDBClient *client = [KUDBClient sharedClient];
    [client deleteCondition:self];
}



@end
