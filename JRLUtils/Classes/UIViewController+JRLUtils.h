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

@interface UIViewController (JRLUtils)

/**
 *Present the alert using alert controller style and one dismiss default alert action without handler
 */
- (void)jrl_presentAlertWithTitle:(NSString*)title
                          message:(NSString*)message
               dismissActionTitle:(NSString*)dismissTitle;

@end

