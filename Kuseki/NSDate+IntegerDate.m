//
//  NSDate+IntegerDate.m
//  Kuseki
//
//  Created by 吉原建 on 1/23/16.
//  Copyright © 2016 Takeru Yoshihara. All rights reserved.
//

#import "NSDate+IntegerDate.h"

@implementation NSDate (IntegerDate)

- (int)integerYear {
    return (int)[[self components] year];
}

- (int)integerMonth {
    return (int)[[self components] month];
}

- (int)integerDay {
    return (int)[[self components] day];
}

- (NSDateComponents *)components {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *comps = [calendar components:
                               NSYearCalendarUnit |
                               NSMonthCalendarUnit |
                               NSDayCalendarUnit |
                               NSHourCalendarUnit |
                               NSMinuteCalendarUnit fromDate:self];
    return comps;
}

@end
