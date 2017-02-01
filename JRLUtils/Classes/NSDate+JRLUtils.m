////////////////////////////////////////////////////////////////////////////
//
// Created by Roger Lee on 31/01/2017.
// Copyright (c) 2017 JRLee Pty Ltd. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

#import "NSDate+JRLUtils.h"

@implementation NSDate (JRLUtils)

+ (NSDate *)dateFromString:(NSString *)a_dateString timeZone:(NSString*)timeZone timeFormat:(NSString*)timeFormat{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:timeFormat];
    [dateFormat setTimeZone:[NSTimeZone timeZoneWithName:timeZone]];
    return [dateFormat dateFromString:a_dateString];
}

+ (NSString*)stringFromDate:(NSDate*)inputDate timeZone:(NSString*)timeZone timeFormat:(NSString*)timeFormat{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:timeFormat];
    [dateFormat setTimeZone:[NSTimeZone timeZoneWithName:timeZone]];
    return [dateFormat stringFromDate:inputDate];;
}

+ (NSDateComponents*)calculateDaysAgo:(NSDate*)inputDate{
    
    NSDate *toDate = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&inputDate
                 interval:NULL forDate:inputDate];
    [calendar rangeOfUnit:NSCalendarUnitDay startDate:&toDate
                 interval:NULL forDate:toDate];
    
    return [calendar components:NSCalendarUnitDay
                       fromDate:inputDate toDate:toDate options:0];
    
}

+ (NSString*)getDayfromUnixTime:(NSString*)unixTimeString{
    
    double unixTimeStamp = [unixTimeString floatValue];
    NSTimeInterval timeInterval=unixTimeStamp;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
    [dateformatter setLocale:[NSLocale currentLocale]];
    [dateformatter setDateFormat:@"EEE, d MMM"];
    NSLog(@"UnixDay : %@", unixTimeString);
    NSLog(@"ConvertedDay : %@", [dateformatter stringFromDate:date]);
    return [dateformatter stringFromDate:date];
}

+ (NSString*)getTimefromUnixTime:(NSString*)unixTimeString{
    
    double unixTimeStamp = [unixTimeString floatValue];
    NSTimeInterval timeInterval=unixTimeStamp;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
    [dateformatter setLocale:[NSLocale currentLocale]];
    [dateformatter setDateFormat:@"h:mm a"];
    NSLog(@"UnixTime : %@", unixTimeString);
    NSLog(@"ConvertedTime : %@", [dateformatter stringFromDate:date]);
    return [dateformatter stringFromDate:date];
}

@end
