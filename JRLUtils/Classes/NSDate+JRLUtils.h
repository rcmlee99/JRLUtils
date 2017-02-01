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

#import <Foundation/Foundation.h>

@interface NSDate (JRLUtils)

/**
 *  Convert NSString to NSDate
 *
 *  @param dateString in NSString
 *  @param timeZone   in NSString e.g @"UTC" or @"Australia/Sydney"
 *  @param timeFormat in NSString e.g @"yyyy-MM-dd HH:mm:ss" see http://userguide.icu-project.org/formatparse/datetime
 *
 *  @return converted dateString in NSDate
 */
+ (NSDate *)dateFromString:(NSString *)dateString timeZone:(NSString*)timeZone timeFormat:(NSString*)timeFormat;
/**
 *  Convert NSDate to NSString
 *
 *  @param inputDate in NSDate
 *  @param timeZone   in NSString e.g @"UTC" or @"Australia/Sydney"
 *  @param timeFormat in NSString e.g @"yyyy-MM-dd HH:mm:ss" see http://userguide.icu-project.org/formatparse/datetime
 *
 *  @return converted date in NSString
 */
+ (NSString*)stringFromDate:(NSDate*)inputDate timeZone:(NSString*)timeZone timeFormat:(NSString*)timeFormat;
/**
 *  Calculate Days ago from inputDate to now
 *
 *  @param inputDate in NSDate
 *
 *  @return NSDateComponents format
 */
+ (NSDateComponents*)calculateDaysAgo:(NSDate*)inputDate;
/**
 *  Convert Unix Time to Day Format EEE, d MMM
 *
 *  @param unixTimeString in String
 *
 *  @return date format in EEE, d MMM
 */
+ (NSString*)getDayfromUnixTime:(NSString*)unixTimeString;
/**
 *  Convert Unix Time to Time Format h:mm a
 *
 *  @param unixTimeString in String
 *
 *  @return time format h:mm a
 */
+ (NSString*)getTimefromUnixTime:(NSString*)unixTimeString;

@end
