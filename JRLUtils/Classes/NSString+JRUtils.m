//
//  StringUtil.m
//
//  Created by Roger Lee on 5/05/2014.
//  Copyright (c) 2014 Roger Lee. All rights reserved.
//

#import "NSString+JRUtils.h"

@implementation NSString (JRLUtils)


- (BOOL)isEqual:(NSString*)firstStr compareString:(NSString*)secondStr{
    
    if([self isEmpty:firstStr] || [self isEmpty:secondStr]){
        return NO;
        
    }
    return [[firstStr lowercaseString] isEqualToString:[secondStr lowercaseString]];
}

- (BOOL)isEqualString:(NSString*)firstStr compareString:(NSString*)secondStr{
    
    if([self isEmpty:firstStr] || [self isEmpty:secondStr]){
        return NO;
        
    }
    return [[firstStr lowercaseString] isEqualToString:[secondStr lowercaseString]];
}

- (BOOL)isEmpty:(NSString*)string {
    
    if((string == nil) ||
       (string == (NSString *)[NSNull null]) ||
       ([string length] == 0) ||
       ([string isEqualToString:@""]) ||
       ![[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length]) {
        
        return YES;
    }
    return NO;
}

- (NSString*)removeEscapeCharacters:(NSString*)value
{
    NSString* str;
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890%,"];
    
    if ([value isKindOfClass:[NSString class]]){
        str = [[value componentsSeparatedByCharactersInSet:[charSet invertedSet]] componentsJoinedByString:@""];
    }else{
        str=value;
    }
    return str;
}

- (NSString*)stringFromCurrency:(NSNumber*)value{
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc]init];
    numberFormatter.locale = [NSLocale currentLocale];// this ensures the right separator behavior
    numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    numberFormatter.usesGroupingSeparator = YES;

    [numberFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    numberFormatter.usesGroupingSeparator = YES;
    numberFormatter.groupingSeparator = @",";
    numberFormatter.groupingSize = 3;
    
    return [numberFormatter stringForObjectValue:value];
}

- (NSNumber*)currencyFromString:(NSString *)value{

    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc]init];
    numberFormatter.locale = [NSLocale currentLocale];// this ensures the right separator behavior
    numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    numberFormatter.usesGroupingSeparator = YES;
    
    [numberFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    numberFormatter.usesGroupingSeparator = YES;
    numberFormatter.groupingSeparator = @",";
    numberFormatter.groupingSize = 3;

    NSNumber * numberVal = [numberFormatter numberFromString:[value stringByReplacingOccurrencesOfString:@"," withString:@""]];

    return numberVal;
}

- (NSString *)prepareForLike:(NSString*)value{
    
    if([self isEmpty:value]){
        return value;
    }
    
    NSString *appStr = @"%";
    appStr = [appStr stringByAppendingString:value];
    appStr = [appStr stringByAppendingString:@"%"];

    return appStr;
}
 
- (NSString*)convertNulltoStr:(NSString*)inputStr
{
    NSString *outputStr = @"";
    if (inputStr==nil) return outputStr;
    if (inputStr==(NSString *)[NSNull null]) return outputStr;
    else return inputStr;
}

- (NSAttributedString*)stringWithHTML:(NSString*)s
{
    NSAttributedString *aString=[[NSAttributedString alloc] initWithString:s];
    
    return aString;
}

@end
