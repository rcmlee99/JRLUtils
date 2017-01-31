//
//  StringUtil.h
//
//  Created by Roger Lee on 5/05/2014.
//  Copyright (c) 2014 Roger Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (JRLUtils)

/**
 *Compares two string case insensitive and check for empty string
 */
- (BOOL)isEqual:(NSString*)firstStr compareString:(NSString*)secondStr;

/**
 *Compares two string case insensitive and check for empty string
 */
- (BOOL)isEqualString:(NSString*)firstStr compareString:(NSString*)secondStr;

/**
 *Returns Boolean if string is nil, zero length and zero white spaces
 */
- (BOOL)isEmpty:(NSString*)string;

/**
 *Returns string with the escape characters removed
 */
- (NSString*)removeEscapeCharacters:(NSString*)value;

- (NSString*)prepareForLike:(NSString*)value;

/**
 *Returns string of local currency based on thousand separator
 */
- (NSString*)stringFromCurrency:(NSNumber*)value;

/**
 *Returns currency number based on thousand separator and local currency
 */
- (NSNumber*)currencyFromString:(NSString*)value;

/**
 *Converts Null String to Zero Length String
 */
- (NSString*)convertNulltoStr:(NSString*)inputStr;

/**
 *Returns string formatted for HTML
 */
- (NSAttributedString*)stringWithHTML:(NSString*)s;

@end
