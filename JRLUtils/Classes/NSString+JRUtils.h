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
