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

#import <UIKit/UIKit.h>
#import "JRLCommon.h"

@interface UIAlertController (JRLUtils)

/**
 *Instantiate Alert Controller with title, message, preferred style and array of UIAlertActions. Sets the alert controller to Modal Presentation Popover style. In iPad, the Popover Alert Controller will be presented in the view and with offset x,y
 */
+ (instancetype)jrl_alertWithTitle:(NSString *)title
                           message:(NSString *)message
                    preferredStyle:(UIAlertControllerStyle)preferredStyle
                            inView:(UIView*)view
                            offset:(CGPoint)point
                           actions:(NSArray *)actions;

/**
 *Instantiate Alert Controller with title, message, preferred style and array of UIAlertActions. Sets the alert controller to Modal Presentation Popover style. In iPad, the Popover Alert Controller will be presented in the view and with offset -10,50
 */
+ (instancetype)jrl_alertWithTitle:(NSString *)title
                           message:(NSString *)message
                    preferredStyle:(UIAlertControllerStyle)preferredStyle
                            inView:(UIView*)view
                           actions:(NSArray *)actions;

@end
